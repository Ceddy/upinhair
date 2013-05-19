class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :face_type

      t.timestamps
    end
  end
end
