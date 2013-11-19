require 'spec_helper'

describe ProblemsController do

 let(:valid_attributes) { { "name" => "MyString" } }

  before(:each) do
    @problem = FactoryGirl.create(:problem, :with_reviews)
  end

  #  describe "GET show" do
  #   it "assigns all problems as @problems" do
  #     get :show
  #     assigns(:review).should be_a_new(Review)
  #   end
  # end


end