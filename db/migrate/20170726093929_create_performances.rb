class CreatePerformances < ActiveRecord::Migration
  def change
    create_table :performances do |t|
      t.string :perfo_name
      t.string :perfo_img
      
      # foreign key
      t.belongs_to :place

      t.timestamps null: false
    end
  end
end
