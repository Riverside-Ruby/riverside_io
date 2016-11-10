class ApplicationMailer < ActionMailer::Base
  default from: "no-reply@riverside-io.herokuapp.com"
  layout 'mailer'
end
