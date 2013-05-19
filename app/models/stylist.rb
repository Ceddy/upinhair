class Stylist < ActiveRecord::Base
	attr_accessible :salon, :user_id
	belongs_to :user
end
