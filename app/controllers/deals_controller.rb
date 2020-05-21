class DealsController < ApplicationController
    # before_action :set_deal

  def index
    @user = User.find(params[:user_id])
    @deals = Deal.all
  end

  def show
  end

  def new
    @deal = Deal.new
  end

  def create
    @deal = Deal.new(deal_params)
    @boat = Boat.find(params[:boat_id])
    @deal.boat = @boat
    if @deal.save
      redirect_to deal_path(@deal)
    else
      render :new
    end
  end

  private

  def set_deal
    @deal = Deal.find(params[:id])
  end

  def deal_params
    params.require(:deal).permit( :start_date, :end_date, :status)
  end

end
