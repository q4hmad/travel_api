class DestinationsController < ApplicationController

    def index
      if params[:search]
        @destinations = Destination.search(params[:search])
     else
       @destinations = Destination.all
     end
      json_response(@destinations)
    end

    def show
      @destination = Destination.find(params[:id])
      json_response(@destination)
    end

    def create
      @destination = Destination.create!(destination_params)
      json_response(@destination, :created)
    end

    def update
      @destination = Destination.find(params[:id])
      @destination.update(destination_params)
    end

    def destroy
      @destination = Destination.find(params[:id])
      @destination.destroy
    end

    private
    def destination_params
      params.permit(:city)
    end
end
