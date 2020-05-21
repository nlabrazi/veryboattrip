class BoatsController < ApplicationController
  before_action :set_boat, only: [:show]
  before_action :set_user, only: [:index, :new, :create]

  def index
  end

  def show
    @deal = Deal.new
    @deals = Deal.where(boat_id: @boat.id)
    @deals_dates = @deals.map do |deal|
      {
        from: booking.start_date,
        to:   booking.end_date
      }
    end
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
    params.require(:boat).permit(:name, :size, :boat_type, :description, photos: [])
  end
end
