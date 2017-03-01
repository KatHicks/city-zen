require 'rails_helper'
require 'web_helper'

feature "Feature: MAPS" do
  context "on the 'new issue' page" do
    scenario 'users should see a map' do
      visit new_issue_path
      expect(page).to have_css('div#map')
    end

    scenario 'users can add coordinates when creating issue' do
      add_issue_with_location
      expect(page).to have_content('Issue was successfully created.')
      expect(current_path).to eq issues_path
    end
  end
end
