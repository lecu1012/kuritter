class TwittersController < ApplicationController
  before_action :set_twitter, only: [:show, :edit, :update, :destroy]

  def index
    render layout: 'top'
  end

  def new
    @twitter = Twitter.new
    @image = UserImage.find_by(email: current_user.email)
    @favorite = current_user.favorites.find_by(user_id: current_user.id)
  end

  def edit
  end

  def show
  end

  def create
    @twitter =  Twitter.new(twitter_params)

    if @twitter.save
      UserMailer.user_mail(current_user.email).deliver
      redirect_to new_twitter_path
    else
      render 'new'
    end
  end

  def update
    if @twitter.update(twitter_params)
      redirect_to new_twitter_path
    else
      render 'new'
    end
  end

  def destroy
    @twitter.destroy
    redirect_to new_twitter_path
  end


  private
  def twitter_params
    params.require(:twitter).permit(:content,:image)
  end

  def user_params
    params.require(:user).permit(:user_id)
  end

  def set_twitter
    @twitter = Twitter.find(params[:id])
  end

  def current_twitter
    @current_twitter ||= twitter.find_by()
  end
end
