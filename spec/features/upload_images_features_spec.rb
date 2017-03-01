require 'rails_helper'

feature "User can upload a photo" do

  it "can upload a photo" do
    visit "/issues/new"
    attach_file('issue[image]', Rails.root + 'spec/features/vandal.jpg')
    click_button "Create Issue"
    expect(page).to have_xpath("//img[@class='issue_thumb_image']")
  end

  it "shows a big photo in issue details" do
    visit "/issues/new"
    attach_file('issue[image]', Rails.root + 'spec/features/vandal.jpg')
    click_button "Create Issue"
    visit "/issues/"
    click_link "Show"
    expect(page).to have_xpath("//img[@class='issue_big_image']")
  end

end
