class UserMailer < ApplicationMailer
  def user_mail(contact)
   @contact = contact

   mail to: "lecu1012@gmail.com", subject: "kuritterにログインしました"
  end
end
