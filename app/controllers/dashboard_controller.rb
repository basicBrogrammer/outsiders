class DashboardController < ApplicationController
  before_action
  def index
    @profpic = @user.photos
  end

  private


  def set_user
    @user = User.find[params[:id]]
  end
end
