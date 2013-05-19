class LookImage < ActiveRecord::Base
	has_attached_file :pic

  attr_accessible :id, :pic, :look, :user
  belongs_to :look
  belongs_to :user
end

