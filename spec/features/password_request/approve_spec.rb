require 'rails_helper'

RSpec.feature "Approve Password Request", type: :feature do
  it "allows us to approve password reset request" do
    password_request = FactoryGirl.create(:password_request)
    credential = FactoryGirl.create(:credential)

    expect {
      visit approve_password_request_path(password_request, token: password_request.token)
    }.to change { ActionMailer::Base.deliveries.count }.by(1)
    .and change { Credential.available.count }.by(-1)

    expect(password_request.credential.present?).to eq true
  end
end
