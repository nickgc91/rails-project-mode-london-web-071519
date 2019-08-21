class Event < ApplicationRecord
    belongs_to :historical_moment 
    has_many :locations
    has_many :actors, through: :locations 


     #analytics methods for Actor
    def self.total_events
        Event.all.count
    end

    def self.event_with_most_actors
        Event.all.max_by do |event|
            event.actors.count
        end
    end

end
