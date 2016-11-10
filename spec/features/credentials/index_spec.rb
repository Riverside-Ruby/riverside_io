require 'rails_helper'

RSpec.feature "List Credentials", type: :feature do
  context "not logged in" do
    it "requires login" do
      visit credentials_path
      expect(page).to have_content "You need to sign in or sign up before continuing"
      expect(current_path).to eq new_user_session_path
    end
  end

  context "logged in" do
    let(:current_user) { FactoryGirl.create(:user) }
    before { sign_in current_user }

    it "allows a user to see all credentials" do
      credential = FactoryGirl.create(:credential)

      visit credentials_path
      expect(page).to have_content credential.username
    end
  end
end
