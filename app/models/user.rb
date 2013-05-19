class User < ActiveRecord::Base
  after_create :create_profile
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :pic
  has_many :look_images
  # Setup accessible (or protected) attributes for your model
  attr_accessible :user_type, :name, :email, :password, :password_confirmation, :remember_me, :location, :sex, :pic
  attr_accessible :look_images

  def create_profile
  	Stylist.create(:user_id => id) if stylist?
  	Customer.create(:user_id => id) if customer?
  end

  def stylist?
    user_type == 'Stylist' || user_type == 'stylist'
  end

  def customer?
    user_type == 'Customer' || user_type == 'customer'
  end
end
