class BoatsController < ApplicationController
  # before_action :set_boat

  def index
    @user = User.find(params[:user_id])
    @boats = Boat.all
  end

  def show
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    if @boat.save
      redirect_to user_boat_path(@user)
    else
      render :new
    end
  end

  private

  def set_boat
    @boat = Boat.find(params[:id])
  end

  # def boat_params
  #   params.require(:boat).permit(, :photo)
  # end
end
