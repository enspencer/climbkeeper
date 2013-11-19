require 'spec_helper'

describe Problem do
  before(:each) do
    @problem = FactoryGirl.create(:problem, :with_reviews)
  end

  describe "associations" do
    it {should belong_to(:rockgym)}
    it {should have_many(:reviews)}
    it {expect(@problem.reviews.length).to eq 4 }
  end

end