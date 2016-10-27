class NotifierMailer < ApplicationMailer
  def approval_needed(password_request)
    @password_request = password_request

    mail to: "matt@bitpeel.com", subject: "Approval needed"
  end

  def credentials_approved(password_request)
    @password_request = password_request
    @credential = password_request.credential

    mail to: @password_request.email, subject: "Your Wifi Credentials"
  end
end
