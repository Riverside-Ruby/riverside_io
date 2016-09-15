require 'rails_helper'

RSpec.feature "Signup", type: :feature do
  it "allows the user to signup" do

    visit root_path
    click_link "Login"
    click_link "Sign up"
    fill_in "user_email", with: "jsmith@gmail.com"
    fill_in "user_password", with: "123456"
    fill_in "user_password_confirmation", with: "123456"
    expect do
      click_button "Sign up"
    end.to change(User, :count).by(1)


  end
end
