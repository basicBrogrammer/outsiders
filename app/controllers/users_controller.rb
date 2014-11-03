class UsersController < ApplicationController
  before_action :set_user, only: [:show]
  def show
    @profpic = current_user.photos.find_by(profile: true) if current_user
  end

  def index
    @users = User.all
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
