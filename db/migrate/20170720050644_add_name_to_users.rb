class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :birthdate, :date
    add_column :users, :interests, :array
    
  end
end