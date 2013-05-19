class AddLooksToUsers < ActiveRecord::Migration
  def change
  	add_column :look_images, :user_id, :integer
  end
end
