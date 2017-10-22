class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update]

  def new
    @user = User.new
    render layout: 'top'
  end

  def show
    render layout: 'top'
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to twitters_index_path
    else
      render 'new'
    end
  end

  def update
    if @user.update(user_params)
      redirect_to new_twitter_path
    else
      render 'new'
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
