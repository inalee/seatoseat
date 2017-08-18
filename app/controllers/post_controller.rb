class PostController < ApplicationController
    
      before_action :userlogin, only: [:create]
     
     
    def create
        @place=Place.all
        @post=Post.all
        @performance=Performance.all
        @seat=Seat.all
        @user=User.all
        @room=Room.all
    end
    
    
    def new
        
        # uploader = UploadImageUploader.new
        # uploader.store!(params[{image: []}])
        
        place = Place.where(:id => params[:place_name])
        place_id = place[0]
        
        room = Room.where(:id => params[:place_room])
        room_id = room[0]
        
        
        perfo = Performance.where("room_id = ? AND perfo_name = ?", room_id, params[:perfo_name])
        perfo_id = perfo[0]
        
        seat = Seat.where(:room_id => room_id, :area1 => params[:seat_area1], :area2 => params[:seat_area2], :area3 => params[:seat_area3])
        seat_id = seat[0]
        
        

                   
                     
       # def post_params
         #   params.require(:post).permit(:review_title, :review_content, :input_watch, perfo_id, seat_id,:rating,:rating2,:rating3,:rating4,:rating5,:user_id, :image)
       # end
        
       # @post = Post.new(params[:post])
         posting = Post.new
         posting.post_title = params[:review_title]
         posting.post_content = params[:review_content]
         posting.watch_date = params[:input_watch]
         posting.performance = perfo_id
         #posting.post_img = uploader
         posting.seat = seat_id
         posting.post_item1 = params[:rating]
         posting.post_item2 = params[:rating2]
         posting.post_item3 = params[:rating3]
         posting.post_item4 = params[:rating4]
         posting.post_item5 = params[:rating5]
         posting.image =  params[:image]
         
          if user_signed_in?
          user_id = current_user.id
          posting.user_id = user_id
          end
         
        # posting.image = uploader
      #  @post.save
        posting.save
       
            
        redirect_to '/create'
        
    end
    
    
    
    def seatPlan
        
        @room_id = params[:room_id]
        
    end
    
    
    def seatReview
       
     
       @seatPost = Post.where(:seat_id => params[:seat_id]).order(created_at: :DESC).page(params[:page]).per(2)
        seatid = @seatPost[0]
       
       #개별 항목 평균 백분위
       @calculate = Post.where(:seat_id => params[:seat_id])
       @average1 = @calculate.average(:post_item1)*20
       @average2 = @calculate.average(:post_item2)*20
       @average3 = @calculate.average(:post_item3)*20
       @average4 = @calculate.average(:post_item4)*20
       @average5 = @calculate.average(:post_item5)*20
       #전체 항목 평균 백분위
       @finalever = (@average1+@average2+@average3+@average4+@average5)/5
       
       #리뷰 총 갯수
       @count = @calculate.count 
        
     
       @seating = Seat.where(:id => params[:seat_id])
       seatroom = @seating.select("room_id").all
       @roomFind = Room.where(:id => seatroom)
       placefind = @roomFind.select("place_id").all
       @findPlace = Place.where(:id => placefind)
       
      # user 찾기 
       userId = @seatPost.select("user_id").all
       @userFind = User.where(:id => userId)
      
      

    end
    
    
    
        
    def detailPost
        
        @postFind = Post.where(:id => params[:post_id])
        postseat = @postFind.select("seat_id").all
        @seatFind = Seat.where(:id => postseat)
        place = @seatFind.select("place_id").all
        @placeFind = Place.where(:id => place)
        
    end
    
    
    
    def delete
    
        post_del=Post.find(params[:post_id])
        post_del.destroy
            
        redirect_to '/'
        
    end
        
        
    def place
        
    end
    

    
    def selVenue
        region = params[:region]
        @venue = Place.where(:region => region)
    end
  
    
     def selRoom
        venue = params[:venue]
        @room = Room.where(:place_id => venue)
     end
    
      
     def selSection
        @room = params[:room]
        @section= Seat.where(:room_id => params[:room])
     end
    
    
     def selRow
        @room = params[:room]
        @row = Seat.where(:room_id => @room, :area1 => params[:section])
    end
    
     def selNumber
        @room = params[:room]
        @number = Seat.where(:room_id => @room, :area1 => params[:section], :area2 => params[:row])
        
    end
    
    
    def place_1
    
    end
    
    def test
        # @postleft = 4
        
    end
    
end