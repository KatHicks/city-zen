require 'rails_helper'

feature "Users can Sign Up" do

  it "Can create an account" do
    visit "/users/sign_up"
    fill_in "Email", with: "team@email.com"
    fill_in "Password", with: "passedword"
    fill_in "Password confirmation", with: "passedword"
    click_button "Sign up"
    expect(page).to have_content("Welcome! You have signed up successfully.")
  end

end
