class HistoricalMomentsController < ApplicationController

    def index
        @historicalMoments = HistoricalMoment.all
    end

    def show 
        @historicalMoment = HistoricalMoment.find(params[:id])
    end 

    def new
        @historicalMoment = HistoricalMoment.new
    end 

    def create
        @historicalMoment = HistoricalMoment.create(historical_moment_params)

        redirect_to historical_moment_path(@historicalMoment)
    end 

    def edit 
        @historicalMoment = HistoricalMoment.find(params[:id])
    end

    def update 
        @historicalMoment = HistoricalMoment.update(historical_moment_params)
        @historicalMoment.save

        redirect_to historical_moment_path(@historicalMoment)
    end 

    def destroy
        HistoricalMoment.find(params[:id]).destroy

        redirect_to historical_moments_path
    end

    private 

    def historical_moment_params
        params.require(:historical_moment).permit(:name, :description, :img_url, :event_date, :moment_id)
    end

end
