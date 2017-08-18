class CreatePerformances < ActiveRecord::Migration
  def change
    create_table :performances do |t|
      t.string :perfo_name
      t.string :perfo_img
      t.string :perfo_detail1
      t.text :perfo_detail2
      
      # foreign key
      t.belongs_to :room

      t.timestamps null: false
    end
    
  end
end
