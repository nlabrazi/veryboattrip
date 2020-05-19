class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :landing]

  def landing
    @user = current_user
  end

  def home
    @boats = Boat.all
    @user = current_user
  end


end
