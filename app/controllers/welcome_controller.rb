class WelcomeController < ApplicationController
  def index
    @videos = Video.all
  end

  def deer
    @videos = Video.where(huntType: "deer")
  end

  def duck
    @videos = Video.where(huntType: "duck")
  end

  def like
    @video = Video.find(params[:vote])
    @video.liked_by(current_user)
    respond_to do |format|
      format.html { redirect_to :back }
      format.js
    end

  end

  def dislike
    @video = Video.find(params[:vote])
    @video.downvote_from(current_user)
    respond_to do |format|
      format.html { redirect_to :back }
      format.js
    end
  end
end
