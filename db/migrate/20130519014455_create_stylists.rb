class CreateStylists < ActiveRecord::Migration
  def change
    create_table :stylists do |t|
      t.string :salon
      t.integer :user_id
      
      t.timestamps
    end
  end
end
