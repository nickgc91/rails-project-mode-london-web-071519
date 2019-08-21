class Actor < ApplicationRecord
    has_many :locations 
    has_many :events, through: :locations


    def Actor.does_this_work
        @actors = Actor.all
    end 


    #analytics methods for Actor
    def self.total_actors
        Actor.all.count
    end

    def self.actor_with_most_events
        Actor.all.max_by do |actor|
            actor.events.count
        end
    end

end
