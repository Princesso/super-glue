class ApplicationController < ActionController::Base
  before_action :configure_devise_controller, if: :devise_controller?

  protected

  def configure_devise_controller
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
    devise_parameter_sanitizer.permit(:update, keys: [:first_name, :last_name, :profile_url])

  end
end
