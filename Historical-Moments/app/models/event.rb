class Event < ApplicationRecord
    belongs_to :historical_moment 
    has_many :locations
    has_many :actors, through: :locations 
end
