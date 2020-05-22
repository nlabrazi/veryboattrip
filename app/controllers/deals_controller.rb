class DealsController < ApplicationController
    # before_action :set_deal

  def index
    @user = User.find(params[:user_id])
    @deals = Deal.all
  end

  def show

    @deals = current_user.deals
  end

  def new
    @deal = Deal.new
  end

  def update

  end

  def create
    @deal = Deal.new(deal_params)
    @boat = Boat.find(params[:boat_id])
    @deal.user = current_user
    @deal.boat = @boat
    @deal.status = "pending"
    if @deal.save
      redirect_to dashboard_path
    else
      render "boats/show"
    end
  end

  def validate
    @deal = Deal.find(params[:deal_id])
    @deal.update(status: "Accepted")
    redirect_to dashboard_path
  end

  private

  def set_deal
    @deal = Deal.find(params[:id])
  end

  def deal_params
    params.require(:deal).permit( :start_date, :end_date, :status)
  end

end
