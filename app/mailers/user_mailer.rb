class UserMailer < ApplicationMailer
  default from: 'no-reply@jungle.com'

  def order_email(user)
    @user = user
    @url  = 'http://localhost:3000/'
    mail(to: @user.email, subject: 'Your Jungle order')
  end
end
