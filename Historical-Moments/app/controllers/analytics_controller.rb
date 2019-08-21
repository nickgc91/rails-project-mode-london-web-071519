class AnalyticsController < ApplicationController

    def show
        @actors = Actor.all
        @all_actors = Actor.total_actors
        @most_events = Actor.actor_with_most_events
        ####### moments 
        @moments = HistoricalMoment.all
        @total_moments = HistoricalMoment.total_moments
        @hm_most_actors = HistoricalMoment.moment_with_most_actors
        @hm_most_events = HistoricalMoment.moment_with_most_events
        @hm_most_docs = HistoricalMoment.most_documents
    end 
end
