class PagesController < ApplicationController
  layout "pages"

  def faq
  end

  def about
  end

  def contact
  end

  def credits
  end

  def help
  end

  def user
    @user = params[:user]
  end
end
