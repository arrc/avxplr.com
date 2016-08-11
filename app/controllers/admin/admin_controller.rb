class Admin::AdminController < ApplicationController
  layout "admin"
  def dashboard
    render template: "admin/dashboard"
  end
end
