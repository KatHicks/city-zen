require 'rails_helper'

feature "Feature: TAGS" do
  context "there are no tags" do

    scenario 'should display a prompt to add a new tag' do
      sign_up_council
      sign_out
      sign_in(email: "council@email.com")
      visit '/'
      expect(page).to have_link "Add Tag"
    end
  end
end
