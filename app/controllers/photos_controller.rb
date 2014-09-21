class PhotosController < ApplicationController
  before_action :set_photo, only: [:destroy]
  def index
    @photos = Photo.where(user_id: params[:user_id])
  end

  def profpic
    current_profpic = current_user.photos.find_by(profile: true)
    current_profpic.profile = false
    current_profpic.save
    new_profpic = current_user.photos.find(params[:photo_id])
    new_profpic.profile = true
    new_profpic.save
    redirect_to root_path
  end

  def create
    @photo = Photo.new(photo_params)
    @photo.user_id = current_user.id
    current_user.profpic(@photo)
    if @photo.save
      redirect_to root_path, notice: 'Photo was successfully uploaded.'
    else
      redirect_to root_path, notice: 'TRY AGAIN PHOTO NOT UPLOADED!'
    end
  end

  def destroy
    @photo.destroy
    redirect_to root_path, notice: 'Photo was successfully destroyed.'
  end

  private

  def set_photo
    @photo = Photo.find[params[:id]]
  end

  def photo_params
    params.require(:photo).permit(:image, :description, :profile)
  end
end
