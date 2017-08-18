class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :place_name       #건물 전체 이름
      t.string :image
      t.string :type1
      t.string :type2
      t.string :region          #지역
      t.string :address
      t.text :detail
      t.timestamps null: false
    end
  end
end
