require 'rails_helper'

describe "post a destination route", :type => :request do

  before do
    post '/destinations', params: { :city => 'test_city'}
  end

  it 'returns the city name' do
    expect(JSON.parse(response.body)['city']).to eq('test_city')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end

  it 'returns updates city name' do
    expect(response).to be_an_instance_of(String)
  end
end
