class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :phone, :photo])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :phone, :photo])
 end

  def after_sign_in_path_for(resource)
    "/home" # Or :prefix_to_your_route
  end

  def after_sign_up_path_for(resource)
    "/home" # Or :prefix_to_your_route
  end
end
