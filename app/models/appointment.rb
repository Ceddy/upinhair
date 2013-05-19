class Appointment < ActiveRecord::Base
  attr_accessible :date, :location, :status, :customer, :stylist

  has_one :customer
  has_one :stylist
  has_many :messages
  accepts_nested_attributes_for :messages
end
