class Admin::ShotsController < ApplicationController

  # TODO: comments,fav count
  def index
    @shots = Shot.all.includes(:user)
  end

# TODO: shots destroy js response
  def destroy
    @shot = Shot.find(params[:id])
    @shot.destroy
  end
end
