require 'rails_helper'

feature "Users Sign In" do
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

end
