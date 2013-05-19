class Look < ActiveRecord::Base
  attr_accessible :description, :id, :description, :before_pic, :after_pic

  has_one :before_pic, :class_name => 'LookImage', :foreign_key => 'before_id'
  has_one :after_pic, :class_name => 'LookImage', :foreign_key => 'after_id'

end
