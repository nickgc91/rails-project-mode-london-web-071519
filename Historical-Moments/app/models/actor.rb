class Actor < ApplicationRecord
    has_many :locations 
    has_many :events, through: :locations


    #provides the total amount of actors
    def self.total_actors
        Actor.all.count
    end

    #actor with the most events
    def self.actor_with_most_events
        actor = Actor.all.max_by do |actor|
            actor.events.count
        end
    end


end
