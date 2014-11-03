class PhotosController < ApplicationController
  before_action :set_photo, only: [:update, :destroy]
  def index
    @photos = Photo.where(user_id: params[:user_id])
  end

  def create
    @photo = Photo.new(photo_params)
    @photo.user_id = current_user.id
    if @photo.save
      redirect_to root_path, notice: 'Photo was successfully uploaded.'
    else
      redirect_to root_path, notice: 'TRY AGAIN PHOTO NOT UPLOADED!'
    end
  end

  def update
    oldprofpic(current_user) if photo_params["profile"]
     if @photo.update(photo_params)
       redirect_to :back, notice: 'Success!'
     else
       redirect_to :back, notice: 'Sorry, there was a problem. Try Again.' 
     end
  end

  def destroy
    @photo.destroy
    redirect_to root_path, notice: 'Photo was successfully destroyed.'
  end

  private

  def set_photo
    @photo = Photo.find(params[:id])
  end

  def photo_params
    params.require(:photo).permit(:image, :description, :profile)
  end

  def oldprofpic(user)
    oldprofpic = Photo.where( user: user, profile: true) 
    oldprofpic.each do |pic|
      pic.profile = false
      pic.save
    end  
  end
end
