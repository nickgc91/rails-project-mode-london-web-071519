class HistoricalMomentsController < ApplicationController

    def index
        @historicalMoments = HistoricalMoment.all
    end

end
