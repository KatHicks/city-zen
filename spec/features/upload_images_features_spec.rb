require 'rails_helper'

feature "User can upload a photo" do
  before do
    sign_up
  end

  it "shows a big photo in issue details" do
    create_issue_with_image
    click_link "Show"
    expect(page).to have_xpath("//img[@class='issue_big_image']")
  end

end
