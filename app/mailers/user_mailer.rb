class UserMailer < ApplicationMailer
  def user_mail(twitter,user)
    @content = twitter
    @user = user

    mail(to: @user.email, subject: "kuritterに投稿しました")
    #mail(to: "lecu1012@gmail.com", subject: "kuritterにログインしました")
  end
end
