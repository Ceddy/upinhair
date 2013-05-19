class Message < ActiveRecord::Base
  
  belongs_to :appointment
  has_one :sender, :class_name => 'User', :foreign_key => 'sender_id'
  has_one :receiver, :class_name => 'User', :foreign_key => 'receiver_id'
  has_one :look_image
  attr_accessible :content, :sender, :receiver, :look_image
end
