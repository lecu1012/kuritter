class UserMailer < ApplicationMailer
  def user_mail(twitter,user)
    @twitter = twitter
    @content = user

    mail(to: @content.email, subject: "kuritterにログインしました")
    #mail(to: "lecu1012@gmail.com", subject: "kuritterにログインしました")
  end
end
