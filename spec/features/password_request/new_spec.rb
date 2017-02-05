require 'rails_helper'

RSpec.feature "New Password Request", type: :feature do
  it "allows a guest to request a new password" do
    visit root_path
    click_link "Request wifi password"
    fill_in "Email", with: "user@example.com"

    expect { click_button "Submit" }.to change(PasswordRequest, :count).by(1)

    notification_email = ActionMailer::Base.deliveries.last
    last_password_request = PasswordRequest.last

    expect(notification_email.subject).to eq "Approval needed"
    expect(notification_email.to).to include "matt@bitpeel.com"
    expect(notification_email.body).to include approve_password_request_path(last_password_request, token: last_password_request.token)
  end
end
