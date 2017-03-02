require 'rails_helper'
Cityzen = Struct.new(:email, :title, :description)  # Is this a good way to declare constants to use with Capybara

  feature 'User Access restricted by role' do
    context 'As a Cityzen' do
      before do
        @cityzen1 = Cityzen.new('cityzen1@fixcity.com', 'Left my granny', 'She is in the park and she only has a packet of crisps left')
        sign_up(email: @cityzen1.email)
        add_issue(title: @cityzen1.title, description: @cityzen1.description)
        click_link "Sign out"

        @cityzen2 = Cityzen.new('cityzen2@fixcity.com', 'Bad Rabbit', "That's a very bad road blocking rabbit")
        sign_up(email: @cityzen2.email)
        add_issue(title: @cityzen2.title, description: @cityzen2.description)
      end

      it 'can create an issue' do
        expect(page).to have_content("Issue was successfully created.")
      end

      it 'can access own issues' do
        find_link_in_issues(email: @cityzen2.email, title: @cityzen2.title, method: "Show").click
        expect(page).to have_content(@cityzen2.description)
      end

      it 'can access other users issues' do
        find_link_in_issues(email: @cityzen1.email, title: @cityzen1.title, method: "Show").click
        expect(page).to have_content(@cityzen1.description)
      end

      it 'can update its own issue' do
        find_link_in_issues(email: @cityzen2.email, title: @cityzen2.title, method: 'Edit').click
        descr = 'Let\'s take that rabbit out and put a kitten instead'
        update_issue(description: descr)
        expect(page).to have_content(descr)
      end

      it 'cannot update other cityzens issues' do
        find_link_in_issues(email: @cityzen1.email, title: @cityzen1.title, method: 'Edit').click
        #expect(page).to have_content("Cannot access /issues/ID!!!/edit: you cannot change other users' issues")
      end

      it 'can delete own issues' do
        find_link_in_issues(email: @cityzen2.email, title: @cityzen2.title, method: 'Destroy').click
        expect(page).to have_content("Issue was successfully destroyed.")
      end

      it 'cannot delete other cityzens issues' do
        find_link_in_issues(email: @cityzen1.email, title: @cityzen1.title, method: 'Destroy').click
        # expect(page).to have_content("Cannot delete issue: you cannot delete other users' issues")
      end
    end
  end
