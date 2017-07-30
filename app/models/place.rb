class Place < ActiveRecord::Base
    has_many :performances
    has_many :seats
end
