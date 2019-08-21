class AnalyticsController < ApplicationController

    def show
        @actors = Actor.all
        @all_actors = Actor.total_actors
        @most_events = Actor.actor_with_most_events
        @longest_life = Actor.actor_with_longest_life
        @shortest_life = Actor.actor_with_shortest_life
        ####### moments 
        @moments = HistoricalMoment.all
        @total_moments = HistoricalMoment.total_moments
        @hm_most_actors = HistoricalMoment.moment_with_most_actors
        @hm_most_events = HistoricalMoment.moment_with_most_events
        @hm_most_docs = HistoricalMoment.most_documents
        @most_events_actors = HistoricalMoment.moment_with_most_events_and_actors
        @earliest = HistoricalMoment.earliest_occuring_moment
        @recent = HistoricalMoment.most_recent_moment

        #### events 
        @events = Event.all 
        @total_events = Event.total_events
        @event_most_actors = Event.event_with_most_actors
        @earliest_event = Event.earliest_occuring_event
        @most_recent_event = Event.most_recent_event
    end 
end
