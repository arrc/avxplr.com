class Admin::AdminController < ApplicationController
  def dashboard
    render template: "admin/dashboard"
  end
end
