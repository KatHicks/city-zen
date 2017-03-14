require 'rails_helper'

feature "Tags" do
  context "Adding tags" do
    before do
      sign_up
      # change_user_to_council("team@email.com")
    end

    # it "should have an add tag button" do
    #   expect(page).to have_link("Add Tag")
    # end
    #
    # it "should be able to add a tag" do
    #   click_link('Add Tag')
    #   fill_in "Name", with: "Rubbish"
    #   expect(page).to have_content("Tag was successfully created.")
    # end

  end

end
