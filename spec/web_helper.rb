def add_issue(title, description)
  visit issues_path
  click_link 'Report Issue'
  fill_in "Title", with: title
  fill_in "Description", with: description
  click_button "Create Issue"
end

def create_issue_with_image
  visit "/issues/new"
  attach_file('issue[image]', Rails.root + 'spec/features/vandal.jpg')
  fill_in "Title", with: "This is a title"
  fill_in "Description", with: "Bla blalbla blablablabla blabla blablablablablablablabla"
  click_button "Create Issue"
end
