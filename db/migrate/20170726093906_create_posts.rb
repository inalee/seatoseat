class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :post_title
      t.text :post_content
      t.string :post_img
      t.integer :post_item1
      t.integer :post_item2
      t.integer :post_item3
      t.integer :post_item4
      t.integer :post_item5
      t.integer :likes
      t.date :watch_date
   
      
      t.string :image_url #이미지 url
      
      # foreign key
      t.belongs_to :performance
      t.belongs_to :seat
      t.belongs_to :user
       

      t.timestamps null: false
    end
  end
end
