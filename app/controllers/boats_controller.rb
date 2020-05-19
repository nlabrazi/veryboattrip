class BoatsController < ApplicationController
  before_action :set_boat

  def index
    @boats = Boat.all
    authorize = @boat
  end

  def show
  end

  def new
    @boat = Boat.new
    authorize = @boat
  end

  def create
    @boat = Boat.new(boat_params)
    authorize = @boat
    if @boat.save
      redirect_to user_boat_path(@user)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @boat.update(boat_params)
    redirect_to boat_path(@boat)
  end

  private

  def set_boat
    @boat = Boat.find(params[:id])
    authorize = @boat
  end

  # def boat_params
  #   params.require(:boat).permit(, :photo)
  # end
end
