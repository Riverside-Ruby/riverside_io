require 'rails_helper'

RSpec.feature "Import a list of passwords", type: :feature do
  it "allows a user to import CSV file of passwords" do
    visit new_credential_import_path

    filename = File.join [ Rails.root, "spec", "fixtures", "sample-passwords.csv"]
    page.attach_file('credential_import_file', filename)
    fill_in "credential_import_expiration", with: 3.months.from_now.to_s

    expect do
      click_button "Upload credentials"
    end.to change { Credential.available.count }.by(30)

    expect(page).to have_content("Uploaded successful")
  end
end
