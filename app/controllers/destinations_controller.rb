class DestinationsController < ApplicationController

  def index
   @destinations = {"destinations": "The secret of getting ahead is getting started."}
    json_response(@destinations)
  end

  private
  def json_response(object)
    render json: object, status: :ok
  end
end
