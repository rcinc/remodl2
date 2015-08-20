class ApplicationMailer < ActionMailer::Base
  default from: "rfcardona@gmail.com"

  def registration_confirmation(user)
    mail(to: user.email)
  end

end
