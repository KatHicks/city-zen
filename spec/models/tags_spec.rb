require 'rails_helper'

describe Tag, type: :model do

  it 'should have many issues' do
      should have_and_belong_to_many(:issues)
  end

  it 'should not allow missing name' do
    tag = Tag.new(name: '')
    expect(tag).not_to be_valid
  end
end
