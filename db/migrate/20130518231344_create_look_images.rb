class CreateLookImages < ActiveRecord::Migration
  def up
    create_table :look_images do |t|
      t.integer :id
      t.string :pic_file_name
      t.string :pic_content_type
      t.integer :pic_file_size
      t.datetime :pic_updated_at
      t.integer :look_id

      t.timestamps
    end
  end

  def down
  	drop_table :look_images
  end
end
