class HistoricalMoment < ApplicationRecord
    has_many :documents
    has_many :events
    has_many :locations, through: :events 
    has_many :actors, through: :locations


    #provides the total amount of moments
    def self.total_moments
        HistoricalMoment.all.count
    end

     #moment with the most events 
     def self.moment_with_most_events
        moment = HistoricalMoment.all.max_by do |moment|
            moment.events.count
        end
    end

     #moment with the most actors
     def self.moment_with_most_actors
        moment = HistoricalMoment.all.max_by do |moment|
            moment.actors.count
        end
    end

    #moment with the most events and actors
    def self.moment_with_most_events_and_actors
        moment = HistoricalMoment.all.max_by do |moment|
            (moment.actors.count + moment.events.count)
        end
    end

    #moment with the most documents
    def self.most_documents
        moment = HistoricalMoment.all.max_by do |moment|
            moment.documents.count 
        end
    end


    #earlierst occuring moment
    def self.earliest_occuring_moment
        moment = HistoricalMoment.all.min_by do |moment|
            moment.start_date
        end
    end

    #most recent moment
    def self.most_recent_moment
        moment = HistoricalMoment.all.max_by do |moment|
            moment.start_date
        end
    end

    

 


end
