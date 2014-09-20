class WelcomeController < ApplicationController
  def index
    @profpic = current_user.photos.find_by(profile: true)
  end
end
