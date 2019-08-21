class AnalyticsController < ApplicationController

    def show
        @actors = Actor.does_this_work
        
    end 

end
