require 'spec_helper'

describe Problem do
  before(:each) do
    @problem = FactoryGirl.create(:problem)
  end

  describe "associations" do
    it {should belong_to(:rockgym)}
    it {should have_many(:reviews)}
  end

end