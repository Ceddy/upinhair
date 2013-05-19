class Appointment < ActiveRecord::Base
  attr_accessible :date, :location, :status, :customer, :stylist

  has_one :customer
  has_one :stylist
end
