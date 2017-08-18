class Performance < ActiveRecord::Base
    belongs_to :room
    has_many :posts
    
end
