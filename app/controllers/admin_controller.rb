class AdminController < ApplicationController

  before_action :authorize_admin?
  layout "admin"

  def dashboard
    render template: "admin/dashboard"
  end

  private

  def authorize_admin?
    redirect_to root_path, alert: 'Access Denied' unless current_user && current_user.is_admin?
  end
end
