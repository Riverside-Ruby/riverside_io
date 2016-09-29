require 'rails_helper'

RSpec.feature "New Password Request", type: :feature do
  it "allows a guest to request a new password" do
    visit root_path
    click_link "request wifi password"
    fill_in "Email", with: "user@example.com"
    #save_and_open_page

    expect do
      click_button "Submit"
    end.to change(PasswordRequest, :count).by(1)

#    expect(page).to have_content "Success"

=begin
    click_link "Sign up"
    fill_in "user_email", with: "jsmith@gmail.com"
    fill_in "user_password", with: "123456"
    fill_in "user_password_confirmation", with: "123456"

=end

  end
end
