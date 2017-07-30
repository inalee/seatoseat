class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :birthdate, :date
    
  end
end