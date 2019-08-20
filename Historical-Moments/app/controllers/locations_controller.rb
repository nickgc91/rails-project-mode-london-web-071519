class LocationsController < ApplicationController

    def new
        @location = Location.new
    end

    def create
        @location = Location.create(location_params)

        redirect_to event_path(@location.event_id)
    end

    private

    def location_params
        params.require(:location).permit(:name, :event_id, :actor_id)
    end
end
