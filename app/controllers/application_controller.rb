class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :latest_shots
  before_action :quotes

  def latest_shots
    # TODO - limit 9 or 12
    @latest_shots = Shot.order(created_at: :desc)
  end

  def random_quote
    @random_quote = Quote.limit(1).order("RANDOM()")
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit :sign_up, keys: [:username, :email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_in, keys: [:username, :password, :remember_me]
    devise_parameter_sanitizer.permit :account_update, keys: [:email, :bio, :password, :current_password, :profile_image, :profile_image_cache]
  end
end
