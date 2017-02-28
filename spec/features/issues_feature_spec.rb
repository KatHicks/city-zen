require 'rails_helper'

feature "Feature: ISSUE" do

  context "there are no issues" do
    scenario 'should display a prompt to add a new issue' do
      visit issues_path
      expect(page).to have_content "No issues have been reported"
      expect(page).to have_link 'Report Issue'
    end
  end

  context "issue has been created" do
    before do
      @issue = Issue.create(title: "Test", description: "Test test")
    end
    scenario "display issues" do
      visit issues_path
      expect(page).to have_content "Test"
      expect(page).not_to have_content 'No issues have been reported'
    end
  end
  
end
