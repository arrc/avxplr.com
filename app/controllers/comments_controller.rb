class CommentsController < ApplicationController
  before_action :load_commentable

  def index
    # @commentable = Aircraft.find(params[:aircraft_id])
    @comments = @commentable.comments
  end

  def new
    @comment = @commentable.comments.new
  end

  def create
    @comment = @commentable.comments.new(comments_params)
    if @comment.save
      redirect_back(fallback_location: root_path)
    else
      render :new
    end
  end

private

  def comments_params
    params.require(:comment).permit(:body)
  end

  def load_commentable
    klass = [Aircraft].detect {|c| params["#{c.name.underscore}_id"] }
    @commentable = klass.find(params["#{klass.name.underscore}_id"])
  end
end
