class Actor < ApplicationRecord
    has_many :locations 
    has_many :events, through: :locations

    def Actor.does_this_work
        @actors = Actor.all
    end 

end
