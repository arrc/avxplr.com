class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
  end

  def user
    @user = params[:user]
  end
end
