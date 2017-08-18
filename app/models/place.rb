class Place < ActiveRecord::Base
    has_many :seats
    has_many :rooms
end
