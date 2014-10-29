require 'rails_helper'

describe Report do
  it 'has a valid factort with a title, author, published' do
    expect(build(:report)).to be_valid
  end
end
