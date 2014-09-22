class WelcomeController < ApplicationController
  def index
    @profpic = current_user.photos.find_by(profile: true) if current_user
    @videos = Video.all
  end
end
