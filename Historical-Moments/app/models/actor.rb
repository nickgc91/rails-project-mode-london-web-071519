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

    #earlierst occuring start date of moment
    def self.earliest_occuring_moment
        moment = HistoricalMoment.all.min_by do |moment|
            moment.start_date
        end
    end

    #most recent event
    def self.most_recent_moment
        event = Moment.all.max_by do |moment|
            moment.start_date
        end
    end

   

end
