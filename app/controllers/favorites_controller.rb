class FavoritesController < ApplicationController
  def index
    @twitter = current_user.favorites.where(user_id: current_user.id)
  end

  def create
    favorite = current_user.favorites.create(twitter_id: params[:twitter_id])
    redirect_to new_twitter_path
  end

  def destroy
    favorite = current_user.favorites.find_by(twitter_id: params[:id]).destroy
    redirect_to new_twitter_path
  end
end
