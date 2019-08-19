class HistoricalMoment < ApplicationRecord
    has_many :documents
    has_many :events
    has_many :locations, through: :events 
    has_many :actors, through: :locations
end
