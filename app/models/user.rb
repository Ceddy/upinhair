class User < ActiveRecord::Base
  after_create :create_profile
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :pic
  # Setup accessible (or protected) attributes for your model
  attr_accessible :user_type, :name, :email, :password, :password_confirmation, :remember_me, :location, :sex, :pic
  # attr_accessible :title, :body
  belongs_to :rolable, :polymorphic => true

  def create_profile
  	if stylist?
  		Stylist.create(:salon => "CandyShops")
  	end
  	if customer?
  		Customer.create(:face_type => "ChubbyDubby")
  	end
  end

  def stylist?
    if user_type == 'Stylist' || user_type == 'stylist'
      true
    end
  end

  def customer?
    if user_type == 'Customer' || user_type == 'customer'
      true
    end
  end
end
