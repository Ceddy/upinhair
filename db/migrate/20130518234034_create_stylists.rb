class CreateStylists < ActiveRecord::Migration
  def change
    create_table :stylists do |t|
      t.string :salon_name

      t.timestamps
    end
  end
end
