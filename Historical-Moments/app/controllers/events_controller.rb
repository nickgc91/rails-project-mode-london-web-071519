class EventsController < ApplicationController

    def index
        @events = Event.all
    end 

    def show 
        @event = Event.find(params[:id])
    end 

    def new
        @event = Event.new
    end 

    def create
        @event = Event.create(event_params)

        redirect_to event_path(@event)
    end 

    def edit 
        @event = Event.find(params[:id])
    end

    def update 
        @event = Event.update(event_params)
        @event.save

        redirect_to event_path(@event)
    end 

    def destroy
        Event.find(params[:id]).destroy

        redirect_to events_path
    end

    private 

    def event_params
        params.require(:event).permit(:name, :description, :img_url, :event_date, :moment_id)
    end

end
