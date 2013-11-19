require 'spec_helper'

describe ProblemsController do

 let(:valid_attributes) { { "name" => "MyString" } }

  before(:each) do
    @problem = FactoryGirl.create(:problem, :with_reviews)
  end

   describe "GET index" do
    it "assigns all problems as @problems" do
      get :index
      assigns(:problems).should eq([problem])
    end


end