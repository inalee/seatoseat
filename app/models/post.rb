class Post < ActiveRecord::Base
    belongs_to :user
    belongs_to :performance
    belongs_to :seat
    has_many :replies

end
