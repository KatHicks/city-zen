require 'rails_helper'

feature "User can upload a photo" do

  it "will show photos thumbnails in issues list" do
    create_issue_with_image
    expect(page).to have_xpath("//img[@class='issue_thumb_image']")
  end

  it "shows a big photo in issue details" do
    create_issue_with_image
    click_link "Show"
    expect(page).to have_xpath("//img[@class='issue_big_image']")
  end

end
