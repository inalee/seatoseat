class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :place_name       #건물 전체 이름
      t.string :href
      t.string :room             #세부 관
      t.string :region          #지역
      t.timestamps null: false
    end
  end
end
