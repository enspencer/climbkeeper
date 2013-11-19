require 'spec_helper'

describe Rockgym do
  before(:each) do
    @rockgym = FactoryGirl.create(:rockgym, :with_problems)
  end

  describe "associations" do
    it {should have_many(:problems)}
    it {expect(@rockgym.problems.length).to eq 3 }
  end

  it 'should have problems' do
    expect(@rockgym.problems.all.length).to eq(3)
  end
  
end