class Customer < ActiveRecord::Base
  attr_accessible :face_type
  has_one :user, :as => :rolable
end
