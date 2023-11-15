class PhotosController < ApplicationController
  before_action :set_reservation
  before_action :set_photo, only: [:show, :destroy]

  def index
    @photos = @reservation.photos
  end

  def show
    # You can add additional logic here if needed
  end

  def new
    @photo = @reservation.photos.build
  end

  def create
    @photo = @reservation.photos.build(photo_params)
    if @photo.save
      redirect_to reservation_photos_path(@reservation), notice: 'Photo was successfully added.'
    else
      render :new
    end
  end

  def destroy
    @photo.destroy
    redirect_to reservation_photos_path(@reservation), notice: 'Photo was successfully removed.'
  end

  private

  def set_reservation
    @reservation = Reservation.find(params[:reservation_id])
  end

  def set_photo
    @photo = @reservation.photos.find(params[:id])
  end

  def photo_params
    params.require(:photo).permit(:image)
    # Assuming you have a Photo model with an 'image' attribute
  end

end
