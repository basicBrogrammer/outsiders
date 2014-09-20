class PhotosController < ApplicationController
  before_action :set_photo, only: [:destroy]
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
    redirect_to dashboard_show_path, notice: 'Photo was successfully destroyed.'
  end

  private

  def set_photo
    @photo - Photo.find[params[:id]]
  end

  def photo_params
    params.require(:photo).permit(:image, :description, :profile)
  end
end
