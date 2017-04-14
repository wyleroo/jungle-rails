class UserMailer < ApplicationMailer
  default from: 'no-reply@jungle.com'

  def order_email(user)
    email = user.email
    @name = user.name
    @url  = 'http://localhost:3000/'
    mail(to: email, subject: 'Your Jungle order')
  end
end
