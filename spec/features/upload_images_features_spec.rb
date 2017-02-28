require 'rails_helper'

feature "User can upload a photo" do

  it "can upload a photo" do
    visit "/issues/new"
    attach_file('issue[image]', Rails.root + 'spec/features/vandal.jpg')
    click_button "Create Issue"
    save_and_open_page
    expect(page).to have_xpath("//img[@class='issue_image']")
  end
end
