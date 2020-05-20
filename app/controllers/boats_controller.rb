class BoatsController < ApplicationController
  before_action :set_boat

  def index
    @boats = current_user.boats
  end

  def show

  end

  def new
    @boat = Boat.new
    @user = User.find(params[:user_id])
  end

  def create
    @boat = Boat.new(boat_params)
    @user = User.find(params[:user_id])
    @boat.user = @user
    if @boat.save
      redirect_to user_boats_path(@user)
    else
      render :new
    end
  end

  private

  def set_boat
    @boat = Boat.find(params[:id])
  end

  def boat_params
    params.require(:boat).permit(:name, :size, :boat_type, :description, photos: [])
  end
end
