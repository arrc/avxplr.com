class Admin::FlagsController < ApplicationController
  # before_action :set_flag, only: [:show, :delete]
  def index
    @flags = Flag.all.includes(:user, :flagable)
  end

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

  def flag_params


  end
end
