class UsersController < ApplicationController
  def new
    @user = User.new
    render layout: 'top'
  end

  def show
    @user = User.find(params[:id])
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

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
