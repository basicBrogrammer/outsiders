class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :photos


  def profpic(photo)
    if photo.profile
      current_profpic = photos.find_by(profile: true)
      current_profpic.profile = false
    end
  end
end
