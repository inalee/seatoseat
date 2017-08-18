class Post < ActiveRecord::Base
  
    
    mount_uploader :image, UploadImageUploader
    
    
     
    belongs_to :user
    belongs_to :performance
    belongs_to :seat

end


