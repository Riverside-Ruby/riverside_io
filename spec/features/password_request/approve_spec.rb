require 'rails_helper'

RSpec.feature "Approve Password Request", type: :feature do
  it "allows us to approve password reset request" do
    password_request = FactoryGirl.create(:password_request)
    visit approve_password_request_path(password_request, token: password_request.token)
    expect(password_request.credential.present?).to eq true
  end
end
