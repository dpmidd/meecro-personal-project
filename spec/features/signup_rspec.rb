require 'rails_helper'

feature "User registers" do

  scenario "User clicks on sign up and registers" do
      visit index_path
        click_on "Sign Up"

    fill_in "First name", with: "David"
    fill_in "Last name", with: "Middleton"
    fill_in "Email address", with: "example@example.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
      click_on "Create User"

    expect(page).to have_content "Welcome, David!"


  end

end