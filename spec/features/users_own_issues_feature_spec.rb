require 'rails_helper'

  feature 'User Own Issues' do
    context 'when user is logged in' do
      it 'stores an association between issues and user' do
        sign_up
        click_link "Report Issue"
        fill_in "Title", with: 'title of problem'
        fill_in "Description", with: "There is a problem with the street"
        click_button "Create Issue"
        expect(page.all(:xpath, '//td[@class="creator-email"]')).to eq("team@email.com")
      end
    end
  end
