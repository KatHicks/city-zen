require 'rails_helper'

describe Issue, type: :model do

  it 'should have many tags' do
      should have_and_belong_to_many(:tags)
  end
  
  it 'should not allow missing title' do
    issue = Issue.new(title: "", description: "Needs fixing")
    expect(issue).not_to be_valid
  end

  it 'should not allow missing description' do
    issue = Issue.new(title: "Ramp broken", description: "")
    expect(issue).not_to be_valid
  end

end
