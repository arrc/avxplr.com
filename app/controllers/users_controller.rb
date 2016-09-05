class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])

    # load 10 recent shots posted by user
    @shots = @user.shots.order("created_at DESC").limit(10)

    # all shots favorited by user
    fav_shot_ids = @user.favorites.where(favoritable_type: "Shot").order('created_at DESC').pluck(:favoritable_id)
    @fav_shots = Shot.find(fav_shot_ids)

    # all aircrafts favorited by user
    fav_aircraft_ids = @user.favorites.where(favoritable_type: "Aircraft").order('created_at DESC').pluck(:favoritable_id)
    @fav_aircrafts = Aircraft.find(fav_aircraft_ids)
  end
end
