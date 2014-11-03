class Photo < ActiveRecord::Base
  belongs_to :user
  dragonfly_accessor :image
  
  attr_accessor :profile

end
