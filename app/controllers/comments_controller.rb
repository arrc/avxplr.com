class CommentsController < ApplicationController
  before_action :load_commentable, except: [:show]

  def index
    # @commentable = Aircraft.find(params[:aircraft_id])
    @comments = @commentable.comments.includes(:user)

  end

  def new
    @comment = @commentable.comments.new
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def create
    @comment = @commentable.comments.new(comments_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path)
    end
  end

  def flag
    @flag = Flag.new(flag_params)
    @flag.user_id = current_user.id
    @flag.flagable_type = "Comment"
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

  def comments_params
    params.require(:comment).permit(:body)
  end

  def load_commentable
    klass = [Aircraft, Shot].detect {|c| params["#{c.name.underscore}_id"] }
    @commentable = klass.friendly.find(params["#{klass.name.underscore}_id"])
  end
end
