class Appointment < ActiveRecord::Base
  attr_accessible :date, :location, :status

  has_one :customer
  has_one :stylist
end
