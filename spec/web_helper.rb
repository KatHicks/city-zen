def add_issue(title, description)
  visit issues_path
  click_link 'Report Issue'
  fill_in "Title", with: title
  fill_in "Description", with: description
  click_button "Create Issue"
end
