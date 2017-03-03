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
      @litter = Issue.create(title: "Litter", description: "A very big problem", status: 'pending')
      @graffiti = Issue.create(title: "Graffiti", description: "A very big problem", status: 'open')
      @tag1 = Tag.create(name: "Litter")
      @tag2 = Tag.create(name: "Graffiti")
      @litter.tags << @tag1
      @graffiti.tags << @tag2
    end
    scenario "display issues" do
      visit issues_path
      expect(page).to have_content "Litter"
      expect(page).not_to have_content 'No issues have been reported'
    end

    scenario "filter issues by status" do
      visit issues_path
      select 'Pending', :from => 'issue_status'
      page.find('.filter-status-button').click
      within(:css, 'table') do
        expect(page).to have_content 'Litter'
        expect(page).not_to have_content 'Graffiti'
      end
    end

    scenario "filter issues by tag" do
      visit issues_path
      select 'Litter', :from => 'issue_tag'
      page.find('.filter-tag-button').click
      within(:css, 'table') do
        expect(page).to have_content 'Litter'
        expect(page).not_to have_content 'Graffiti'
      end
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
