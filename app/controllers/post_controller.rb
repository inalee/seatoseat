class PostController < ApplicationController
    
    def create
        
        @place=Place.all
        @post=Post.all
        @performance=Performance.all
      
    end
    
    
    def new
        
        uploader = UploadImageUploader.new # 이미지 업로드
        uploader.store!(params[:inputUrl])
        
        place = Place.where(:region => params[:region],:place_name => params[:place_name], :room => params[:place_room])
        place_id = place[0]
        
        perfo = Performance.where("place_id = ? AND perfo_name = ?", place_id, params[:perfo_name])
        perfo_id = perfo[0]
        
        posting=Post.new
        posting.post_title = params[:review_title]
        posting.post_content = params[:review_content]
        posting.watch_date = params[:input_watch]
        posting.performance = perfo_id
        posting.image_url = uploader
        posting.save
            
        redirect_to '/test'
        
        
       
        
    end
    
    
    
end
