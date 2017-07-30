class CreateSeats < ActiveRecord::Migration
  def change
    create_table :seats do |t|
      t.integer :seat_item1
      t.integer :seat_item2
      t.integer :seat_item3
      t.integer :seat_item4
      t.integer :seat_item5
      t.string :area1
      # 구역
      t.string :area2
      # 열
      t.string :area3
      # 자리
      
      
      # foreign key
      t.belongs_to :place

      t.timestamps null: false
    end
  end
end
