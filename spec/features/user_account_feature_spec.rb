require 'rails_helper'

feature "User accounts" do
  context "User doesn't exist" do
    it "doesn't log in" do
      sign_in(email: "asadnadfb@bfkjb.com")
      expect(page).to have_content("Invalid Email or password.")
    end
  end

  context "User exists" do
    before do
      sign_up
      click_link "Sign out"
    end
    context "Password is wrong" do
      it "doesn't log in" do
        sign_in(password: "hasdahsbd")
        expect(page).to have_content("Invalid Email or password.")
      end
    end
    context "Password is correct" do
      it "logs in" do
        sign_in
        expect(page).to have_content("Signed in successfully.")
      end
    end
  end

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
