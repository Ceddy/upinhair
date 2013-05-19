class AddRatingToStylist < ActiveRecord::Migration
  def change
    add_column :stylists, :rating, :float
  end
end
