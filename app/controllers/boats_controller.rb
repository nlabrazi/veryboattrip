class BoatsController < ApplicationController
  before_action :set_boat, only: [:show]
  before_action :set_user, only: [:index, :new, :create]

  def index
    @boats = Boat.all
  end

  def show
    @deal = Deal.new
    @marker = {
        lat: @boat.latitude,
        lng: @boat.longitude
      }
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.user = @user
    if @boat.save
      redirect_to boat_path(@boat)
    else
      render :new
    end
  end

  private

  def set_boat
    @boat = Boat.find(params[:id])
  end

  def set_user
    @user = current_user
  end

  def boat_params
    params.require(:boat).permit(:longitude, :latitude, :name, :size, :boat_type, :description, photos: [])
  end
end
