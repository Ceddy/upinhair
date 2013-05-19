class Stylist < ActiveRecord::Base
  attr_accessible :salon_name
  has_one :user, :as => :rolable
end
