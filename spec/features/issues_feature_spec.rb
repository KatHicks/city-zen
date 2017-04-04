require 'rails_helper'

feature "Issues" do
  context "there are no issues" do
    scenario 'should display a prompt to add a new issue' do
      sign_up
      visit issues_path
      expect(page).to have_content "No issues have been reported"
      expect(page).to have_link 'Report Issue'
    end
  end

  context "issue has been created" do
    before do;
      sign_up
      user = User.all.first
      @litter = user.issues.create(title: "Litter", description: "A very big problem", status: 'pending', latitude: 51.509865, longitude: -0.118092)
      @graffiti = user.issues.create(title: "Graffiti", description: "A very big problem", status: 'open', latitude: 51.709865, longitude: -0.318092)
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
      within('.listed-issues', visible: false) do
        expect(page).to have_content 'Litter'
        expect(page).not_to have_content 'Graffiti'
      end
    end

    scenario "filter issues by tag" do
      visit issues_path
      select 'Litter', :from => 'issue_tag'
      page.find('.filter-tag-button').click
      within('.listed-issues', visible: false) do
        expect(page).to have_content 'Litter'
        expect(page).not_to have_content 'Graffiti'
      end
    end

    scenario "issue can be updated" do
      visit issues_path
      click_link("Edit", :match => :first)
      fill_in "Description", with: "A very nice one"
      click_button 'Update Issue'
      expect(page).to have_content("Issue was successfully updated.")
    end
  end



  context "validations" do
    before do
      sign_up
    end

    scenario 'should have a title' do
      add_issue(title: '')
      expect(page).to have_content "Title can't be blank"
    end

    scenario 'should have to have a description' do
      add_issue(description: '')
      expect(page).to have_content "Description can't be blank"
    end


    scenario 'title should be at least 4 characters long' do
      add_issue(title: '123')
      expect(page).to have_content "Title is too short (minimum is 4 characters)"
    end

    scenario 'description should be at least 10 characters long' do
      add_issue(description: 'Testing')
      expect(page).to have_content "Description is too short (minimum is 10 characters)"
    end
  end
end
