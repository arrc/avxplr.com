class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :latest_shots

  def latest_shots
    @latest_shots = Shot.order(created_at: :desc)
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit :sign_up, keys: [:username, :email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_in, keys: [:username, :password, :remember_me]
    devise_parameter_sanitizer.permit :account_update, keys: [:email, :bio, :password, :current_password, :profile_image, :profile_image_cache]
  end
end
