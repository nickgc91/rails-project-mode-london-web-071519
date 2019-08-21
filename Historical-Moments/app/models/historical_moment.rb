class HistoricalMoment < ApplicationRecord
    has_many :documents
    has_many :events
    has_many :locations, through: :events 
    has_many :actors, through: :locations


    
    def self.total_moments
        HistoricalMoment.all.count
    end

end
