class Actor < ApplicationRecord
    has_many :locations 
    has_many :events, through: :locations


    #provides the total amount of actors
    def self.total_actors
        Actor.all.count
    end

    #actor with the most events
    def self.actor_with_most_events
        Actor.all.max_by do |actor|
            actor.events.count
        end
    end


    # COULDN'T GET BIO METHOD TO WORK -->
    # #longest bio
    # def self.actor_with_longest_bio
    #     Actor.all.max_by do |actor|
    #         actor.bio.length
    #     end
    # end

    #longest life
    def self.actor_with_longest_life
        Actor.all.max_by do |actor|
            (actor.death_date.year - actor.birth_date.year)
        end
    end

    #shortest life
    def self.actor_with_shortest_life
        Actor.all.min_by do |actor|
            actor.death_date.year - actor.birth_date.year
        end
    end
   


end
