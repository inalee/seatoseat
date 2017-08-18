class CreateSeats < ActiveRecord::Migration
  def change
    create_table :seats do |t|

      t.string :area1
      # 구역
      t.string :area2
      # 열
      t.string :area3
      # 자리
      
      
      # foreign key
      t.belongs_to :room

      t.timestamps null: false
    end
  end
end
