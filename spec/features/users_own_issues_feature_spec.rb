require 'rails_helper'

  feature 'user has issues' do
    context 'when user is logged in' do
      it 'stores an association between issues and user' do
        sign_up
        add_issue
        within(:css, '.single-header') do
          expect(page).to have_content("team@email.com")
        end
      end
    end
  end
