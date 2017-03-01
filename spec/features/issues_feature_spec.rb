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
      @issue = Issue.create(title: "Testing", description: "A very big problem")
    end
    scenario "display issues" do
      visit issues_path
      expect(page).to have_content "Testing"
      expect(page).not_to have_content 'No issues have been reported'
    end
  end

  context "validations" do

    scenario 'should have to have a title' do
      visit issues_path
      add_issue('', 'Very big problem')
      expect(page).to have_content "Title can't be blank"
    end

    scenario 'should have to have a description' do
      visit issues_path
      add_issue('Testing', '')
      expect(page).to have_content "Description can't be blank"
    end


    scenario 'title should be no more than 10 characters' do
      visit issues_path
      add_issue('123', 'Very big problem')
      expect(page).to have_content "Title is too short (minimum is 4 characters)"
    end

    scenario 'description should be no more than 500 characters' do
      visit issues_path
      add_issue('Problem', 'Testing')
      expect(page).to have_content "Description is too short (minimum is 10 characters)"
    end
  end
end
