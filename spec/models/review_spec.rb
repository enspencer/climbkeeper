require 'spec_helper'

describe Review do
  before(:each) do
    @review = FactoryGirl.create(:review)
  end

  describe "associations" do
    it {should belong_to(:problem)}
  end
end