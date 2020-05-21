class DashboardsController < ApplicationController

  def dashboard
    @boats = current_user.boats
    @deals = current_user.deals
  end


end
