class Stylist < ActiveRecord::Base
  attr_accessible :salon
  belongs_to :user
end
