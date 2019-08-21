class LocationsController < ApplicationController

    def new
        @location = Location.new
    end

    # def eventid
    #     @location = Location.find_by(params[:event_id])
    #     byebug
    #    # @location.event_id = @event.id
    # end 

    # def create_by_id
    #     event = Location.find_by(params[:event_id])
    #     @location_new = Location.new
    #     @location_new.event_id = event.id 
    #     @location_new.name = params[:name]
    #     @location_new.actor_id = params[:actor_id]
    #     @location_new.save 
    #      redirect_to event_path(@location_new.event_id)
    # end 

    def create
        @location = Location.create(location_params)
        redirect_to event_path(@location.event_id)
    end

    private

    def location_params
        params.require(:location).permit(:name, :event_id, :actor_id)
    end
end
