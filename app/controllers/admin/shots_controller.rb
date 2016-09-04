class Admin::ShotsController < ApplicationController

layout "admin"

# TODO: comments,fav count
  def index
    @shots = Shot.all.includes(:user).page(params[:page]).per_page(20).order("created_at DESC")
  end

# TODO: shots destroy js response
  def destroy
    @shot = Shot.friendly.find(params[:id])
    @shot.destroy
  end
end
