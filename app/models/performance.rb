class Performance < ActiveRecord::Base
    belongs_to :place
    has_many :posts
    
end
