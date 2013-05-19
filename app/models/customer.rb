class Customer < ActiveRecord::Base
  attr_accessible :body_shape, :facial_shape, :hair_color, :hair_length, :hair_texture
end
