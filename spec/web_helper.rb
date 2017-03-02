def add_issue(title: "Testing", description: "A very big problem")
  click_link 'Report Issue'
  fill_in "Title", with: title
  fill_in "Description", with: description
  click_button "Create Issue"
end

def add_issue_with_location
  visit new_issue_path
  fill_in 'Title', with: "A test"
  fill_in 'Description', with: "A description of the test"
  first('input#latitude', visible: false).set("51.509865")
  first('input#longitude', visible: false).set("-0.118092")
  click_button 'Create Issue'
end

def create_issue_with_image
  visit "/issues/new"
  attach_file('issue[image]', Rails.root + 'spec/features/vandal.jpg')
  fill_in "Title", with: "This is a title"
  fill_in "Description", with: "Bla blalbla blablablabla blabla blablablablablablablabla"
  click_button "Create Issue"

def sign_up(password: "passedword", password_confirmation: "passedword")
  visit "/users/sign_up"
  fill_in "Email", with: "team@email.com"
  fill_in "Password", with: password
  fill_in "Password confirmation", with: password_confirmation
  click_button "Sign up"
end

def sign_in(password: "passedword", email: "team@email.com")
  visit "/users/sign_in"
  fill_in "Email", with: email
  fill_in "Password", with: password
  click_button "Log in"
end
