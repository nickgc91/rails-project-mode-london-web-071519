class Actor < ApplicationRecord
    has_many :locations 
    has_many :events, through: :locations

    def self.total_actors
        Actor.all.count
    end

    def self.actor_with_most_events
        Actor.all.max_by do |actor|
            actor.events.count
        end
    end

end
