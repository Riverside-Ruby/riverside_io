class NotifierMailer < ApplicationMailer
  def approval_needed(password_request)
    @password_request = password_request

    mail to: "matt@bitpeel.com", subject: "Approval needed"
  end
end
