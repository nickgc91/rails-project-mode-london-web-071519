class Event < ApplicationRecord
    belongs_to :historical_moment 
    has_many :locations
    has_many :actors, through: :locations 


     #analytics methods for Actor

    #provides the total amount of events
    def self.total_events
        Event.all.count
    end

    #event with most actors
    def self.event_with_most_actors
        event = Event.all.max_by do |event|
            event.actors.count
        end
    end

end
