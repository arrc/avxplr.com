class Admin::CommentsController < ApplicationController
  layout "admin"
  # TODO: flag count for comment
  def index
    @comments = Comment.all.page(params[:page]).per_page(3)
  end

  # TODO: destroy js response for comment
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    respond_to do |format|
      format.js
    end
  end
end
