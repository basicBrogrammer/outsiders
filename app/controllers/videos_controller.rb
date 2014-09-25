class VideosController < ApplicationController
  before_action :set_photo, only: [:destroy]

  def like
    video = params{:vote}
    video.liked_by current_user
    redirect_to :back
  end

  def dislike
    video = params{:vote}
    video.downvote_from current_user
    redirect_to :back
  end

  def index
    @videos = Video.where(user_id: params[:user_id])
  end

  def create
    @video = Video.new(video_params)
    @video.user_id = current_user.id

    if @video.save
      redirect_to root_path, notice: 'Video was successfully uploaded.'
    else
      redirect_to root_path, notice: 'TRY AGAIN VIDEO NOT UPLOADED!'
    end
  end

  def destroy
    @video.destroy
    redirect_to root_path, notice: 'Photo was successfully destroyed.'
  end

  private

  def set_video
    @photo = Video.find[params[:id]]
  end

  def video_params
    params.require(:video).permit(:movie, :movie_embed, :summary, :city, :state, :huntType)
  end
end
