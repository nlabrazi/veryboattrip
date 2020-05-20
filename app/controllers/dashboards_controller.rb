class DashboardsController < ApplicationController

  def dashboard
    @boats = current_user.boats
  end


end
