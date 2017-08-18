class AddImageToPosts < ActiveRecord::Migration
  def change
    
    add_column :posts, :image, :string, array:true
    
    
  end
end
