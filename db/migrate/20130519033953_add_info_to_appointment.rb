class AddInfoToAppointment < ActiveRecord::Migration
  def change
  	add_column :appointments, :customer_id, :integer
  	add_column :appointments, :stylist_id, :integer
  	add_column :appointments, :status, :string
  end
end
