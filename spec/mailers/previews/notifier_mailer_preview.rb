# Preview all emails at http://localhost:3000/rails/mailers/notifier_mailer
class NotifierMailerPreview < ActionMailer::Preview
  def approval_needed
    password_request = PasswordRequest.last
    NotifierMailer.approval_needed(password_request)
  end

  def credentials_approved
    password_request = PasswordRequest.last
    password_request.credential = Credential.last
    NotifierMailer.credentials_approved(password_request)
  end
end
