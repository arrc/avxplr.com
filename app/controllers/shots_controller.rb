class ShotsController < ApplicationController
  before_action :set_shot, only: :show
  after_action :increment_views, only: :show

  def index
    @shots = Shot.all
  end

  def show
    @commentable = @shot
    @comments = @commentable.comments
    @comment = Comment.new
  end

  def tags
    @shots = Shot.tagged_with(params[:tag])
  end

  def new
    @shot = Shot.new
    # @aircrafts = Aircraft.all.includes(:manufacturers)
  end

  def create
    binding.pry
    @shot = Shot.new(shot_params)
    @shot.user_id = current_user.id
    if @shot.save
      redirect_to shot_path(@shot), notice: "Created."
    else
      render :new
    end
  end

  def favorite
    if Favorite.shots(current_user.id).exists?(favoritable_id: params[:id])
      Favorite.where(favoritable_type: "Shot", favoritable_id: params[:id], user_id: current_user.id).first.destroy
      redirect_back(fallback_location: root_path, notice: "Unfavorited")
    else
      Favorite.create(user_id: current_user.id, favoritable_id: params[:id], favoritable_type: "Shot")
      redirect_back(fallback_location: root_path, notice: "Favorited")
    end
  end

private

  def set_shot
    @shot = Shot.find(params[:id])
  end

  def shot_params
    params.require(:shot).permit(:caption, :all_tags)
  end

  def increment_views
    # @shot = Shot.find(params[:id])
    @shot.increment!(:view_count)
  end
end
