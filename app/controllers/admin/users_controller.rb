class Admin::UsersController < ApplicationController
  layout "admin"
  before_action :set_user, except: [:index]

  def index
    if params[:search]
      @users = User.where("username ILIKE ?", "%#{params[:search]}%").order('created_at DESC')
    else
      @users = User.all
    end
  end

  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to admin_user_path(@user), notice: 'user was successfully edited.'
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:is_active)
  end
end
