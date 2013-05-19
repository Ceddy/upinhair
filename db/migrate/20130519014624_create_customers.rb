class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :facial_shape
      t.string :body_shape
      t.string :hair_length
      t.string :hair_color
      t.string :hair_texture

      t.timestamps
    end
  end
end
