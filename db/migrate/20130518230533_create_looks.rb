class CreateLooks < ActiveRecord::Migration
  def up
    create_table :looks do |t|
      t.integer :id
      t.text :description
      t.integer :before_id
      t.integer :after_id

      t.timestamps
    end
  end

  def down
  	drop_table :looks
  end
end
