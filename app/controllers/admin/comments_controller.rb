class Admin::CommentsController < ApplicationController

  # TODO: flag count for comment
  def index
    @comments = Comment.all
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
