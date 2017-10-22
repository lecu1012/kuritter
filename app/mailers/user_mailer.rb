class UserMailer < ApplicationMailer
  def user_mail(email)

    mail(to: email, subject: "kuritterにログインしました")
    #mail(to: "lecu1012@gmail.com", subject: "kuritterにログインしました")
  end
end
