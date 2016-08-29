class ShotsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :favorite, :flag]
  before_action :set_shot, only: :show
  before_action :shots_count
  after_action :increment_views, only: :show

  def index
    # binding.pry
    if params[:category]
      cat_id = CATEGORIES.fetch params[:category].to_sym
      return @shots = Shot.where(shot_category_id: cat_id).where(is_public: true).all.includes(:user).order("created_at DESC").page(params[:page]).per_page(3)
    end
    @shots = Shot.where(is_public: true).all.includes(:user).page(params[:page]).per_page(5).order("created_at DESC")
  end

  def show
    @commentable = @shot
    @comments = @commentable.comments.includes(:user)
    @comment = Comment.new
    @flag = Flag.new
  end

  def tags
    @shots = Shot.tagged_with(params[:tag])
  end

  def category
    # @shots = Shot.where()
  end

  def new
    @shot = Shot.new
    # @aircrafts = Aircraft.all.includes(:manufacturers)
  end

  def create
    # binding.pry
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

  def flag
    @flag = Flag.new(flag_params)
    @flag.user_id = current_user.id
    @flag.flagable_type = "Shot"
    @flag.flagable_id = params[:id]
      respond_to do |format|
        if @flag.save
          format.js
        end
      end
  end

private

  def flag_params
    params.require(:flag).permit(:message)
  end

  def set_shot
    @shot = Shot.find(params[:id])
  end

  def shot_params
    params.require(:shot).permit(:caption, :image, :shot_type, :video, :source, :shot_category_id, all_tags: [])
  end

  def shots_count
    @shots_stats = Shot.count
  end

  def increment_views
    # @shot = Shot.find(params[:id])
    @shot.increment!(:view_count)
  end
end
