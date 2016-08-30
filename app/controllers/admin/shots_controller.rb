class Admin::ShotsController < ApplicationController

layout "admin"

# TODO: comments,fav count
  def index
    @shots = Shot.all.includes(:user).page(params[:page]).per_page(3)
  end

# TODO: shots destroy js response
  def destroy
    @shot = Shot.find(params[:id])
    @shot.destroy
  end
end
