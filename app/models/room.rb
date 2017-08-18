class Room < ActiveRecord::Base
    has_many :seats
    belongs_to :place
    has_many :performances
end
