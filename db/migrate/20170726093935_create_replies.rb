class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      
      t.string :re_content
      
      #foreign key
      
      t.belongs_to :post
      
      t.timestamps null: false
    end
  end
end
