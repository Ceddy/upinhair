class AddLocationSexToUsers < ActiveRecord::Migration
  def up
  	add_column :users, :location, :string, :after=>:id
  	add_column :users, :sex, :string, :after => :location
  end
  def down
  	remove_column :users, :location
  	remove_column :users, :sex
  end
end
