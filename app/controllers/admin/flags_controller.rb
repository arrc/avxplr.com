class Admin::FlagsController < ApplicationController

  def index
    @flags = Flag.all.includes(:user, :flagable)
  end

# TODO: flag destroy js response
  def destroy
    @flag = Flag.find(params[:id])
    @flagable = @flag.flagable
    @flagable.destroy
    respond_to do |format|
      format.js
    end
  end

private
  def set_flag
    @flag = Flag.find(params[:id])
  end
end
