class LookImage < ActiveRecord::Base
	has_attached_file :pic

  attr_accessible :id, :pic, :look
  belongs_to :look
end
