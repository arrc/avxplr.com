class AdminController < ApplicationController

  before_action :authorize_admin?
  layout "admin"

  def dashboard
    @users_count = User.count
    @aircrafts_count = Aircraft.where(is_public: true).count
    @shots_count = Shot.count
    @flags_count = Flag.count

    @shots = Shot.order('created_at DESC').limit(6).includes(:user)
    @comments = Comment.order('created_at DESC').limit(10).includes(:user)
    @flags = Flag.order('created_at DESC').limit(10).includes(:user)
    @users = User.order('created_at DESC').limit(10)
    render template: "admin/dashboard"
  end

  private

  def authorize_admin?
    redirect_to root_path, alert: 'Access Denied' unless current_user && current_user.is_admin?
  end
end
