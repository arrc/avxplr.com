class Admin::FlagsController < ApplicationController
  before_action :set_flag, only: [:show, :delete]
  def index
    @flags = Flag.all.includes(:user, :flagable)
  end

  def show
  end

  def destroy
    # @flag.destroy
    # respond_to do |format|
    #   format.js
    # end
    nuke = params[:nuke]
    if nuke
      pp "Nuke it"
    else
      pp "Destroy it"
    end
  end

private
  def set_flag
    @flag = Flag.find(params[:id])
  end

  def flag_params


  end
end
