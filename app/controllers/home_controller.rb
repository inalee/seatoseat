class HomeController < ApplicationController
  
  before_action :userlogin, only: [:category_perfo, :category_sport, :category_theater]
  
  def about
    
  end
  
  def index
    
  
    
    
    post=Post.select('post_title').order("RANDOM()").limit(30)
    @postArray = post.map {|p| p.post_title}
    
  end
  
  def category_perfo
    
 
       @place=Place.where(:type1 => '공연')
  
    
  end
  
  
  def category_sport
    
    
        @place=Place.where(:type1 => '스포츠')
  
    
  end
  
  
  def category_theater
    
    @place=Place.where(:type1 => '극장')
    
     
  end
  
  
  def category2
  
  
    @perfo=Performance.all
    selRoom = @perfo.select("room_id").all
    @roomFind = Room.where(:id => selRoom)
    selPlace = @roomFind.select("place_id").all
    @placeFind = Place.where(:id => selPlace)
    
    
  end
  
  def r_perfo
    
    
    r_perfo = params[:region]
    
    if "all".eql? r_perfo 
       @place=Place.where(:type1 => '공연')
  
    else
      @place=Place.where(:region => params[:region] , :type1 => '공연')
    end
    
  end
  
  def r_sport
    
    
    region = params[:region]
    type2 = params[:type2]
    
    if !region.nil? && type2.nil?
      @place=Place.where(:region => params[:region] , :type1 => '스포츠')
    else
      @place=Place.where(:region => params[:region] , :type1 => '스포츠', :type2=> params[:type2])
    end

  end
  
    
  def r_theater
    
    
    region = params[:region]
    type2 = params[:type2]
    
    if !region.nil? && type2.nil?
      @place=Place.where(:region => params[:region] , :type1 => '극장')
    else
      @place=Place.where(:region => params[:region] , :type1 => '극장', :type2=> params[:type2])
    end

  end
  
  def r_perfo_place
    
      
    
  end
  
  
  def info
  
    @place=Place.where(:id => params[:place_id])
    @room=Room.where(:place_id => params[:place_id])
    
  end
  
  
  def perfoInfo
    
    @perfo = Performance.where(:id => params[:performance_id])
    perSel = @perfo.select("room_id").all
    @roomSel = Room.where(:id => perSel)
    placeSel = @roomSel.select("place_id").all
    @placeFind = Place.where(:id => placeSel)
    
  end
end
