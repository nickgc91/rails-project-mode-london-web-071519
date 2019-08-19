class HistoricalMomentsController < ApplicationController

    def index
        @historicalMoments = HistoricalMoment.all
    end

    def show 
        @historicalMoment = HistoricalMoment.find(params[:id])
    end 

end
