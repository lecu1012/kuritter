class UserImagesController < ApplicationController
  def create
    @image = UserImage.new(userimage_param)
    if @image.save
      redirect_to new_twitter_path
    else
      render 'new'
    end
  end

  def destroy
    @image = UserImage.find(params[:id])
    @image.destroy
    redirect_to new_twitter_path
  end

  private
  def userimage_param
    params.require(:user_image).permit(:email,:image)
  end
end
