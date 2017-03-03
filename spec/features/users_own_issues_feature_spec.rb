require 'rails_helper'

  feature 'User Own Issues' do
    context 'when user is logged in' do
      it 'stores an association between issues and user' do
        sign_up
        add_issue
        expect(page.all(:xpath, '//td[@class="creator-email"]').first.text).to eq("team@email.com")
      end
    end
  end
