class BoatsController < ApplicationController
  before_action :set_boat, only: [:show]
  before_action :set_user, only: [:index, :new, :create]

  def index
    @boats = Boat.all
  end

  def show
    @deal = Deal.new
    @deals = Deal.where(boat_id: @boat.id)
    @bookings_dates = @deals.map do |deal|
      {
        from: deal.start_date,
        to:   deal.end_date
      }
    end
    @coordinates = Geocoder.search(@boat.address).first.coordinates
    @marker = {
        lat: @coordinates[0],
        lng: @coordinates[1]
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
    params.require(:boat).permit(:address, :name, :size, :boat_type, :description, photos: [])
  end
end
