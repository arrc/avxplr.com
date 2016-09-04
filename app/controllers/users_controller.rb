class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @shots = @user.shots.limit(10)
    @fav_shots = @user.favorites.where(favoritable_type: "Shot")
    @fav_aircrafts = @user.favorites.where(favoritable_type: "Aircraft")
  end
end
