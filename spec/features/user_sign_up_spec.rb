require 'rails_helper'

feature "Users Sign Up" do
  context "when all fields are valid" do
    it "can create an account" do
      sign_up
      expect(page).to have_content("Welcome! You have signed up successfully.")
    end
  end

  context "when password is empty" do
    it "fail creating an account with error message" do
      sign_up(password: "")
      expect(page).to have_content("Password can't be blank")
    end
  end

  context "when password is empty" do
    it "fail creating an account with error message" do
      sign_up(password: "a")
      expect(page).to have_content("Password is too short")
    end
  end

  context "when password confirmation is not valid" do
    it "fail creating an account with error message" do
      sign_up(password: "adsadsad", password_confirmation: "zxccvf")
      expect(page).to have_content("Password confirmation doesn't match Password")
    end
  end
end
