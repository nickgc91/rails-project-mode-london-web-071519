class AnalyticsController < ApplicationController

    def show
        @actors = Actor.all
        @all_actors = Actor.total_actors
        @most_events = Actor.actor_with_most_events
   
    end 
end
