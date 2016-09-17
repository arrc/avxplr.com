class Admin::FlagsController < ApplicationController
  layout "admin"
  def index
    @flags = Flag.all.includes(:user, :flagable).page(params[:page]).per_page(20)
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
