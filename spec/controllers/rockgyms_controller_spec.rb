require 'spec_helper'

describe RockgymsController do

  let(:valid_attributes) { { "name" => "MyString" } }


  before(:each) do
    @rockgym = FactoryGirl.create(:rockgym, :with_problems)
  end

  describe "GET index" do
    it "assigns all gyms as @rockgyms" do
      get :index
      expect(assigns(:rockgyms)).to eq([@rockgym])
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "GET show" do
    it "assigns the requested problem as @problem" do
      get :show, :id => @rockgym.id
      assigns(:problem).should be_a_new(Problem)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Rockgym" do
        expect {FactoryGirl.create(:rockgym, :with_problems)}.to change(Rockgym, :count).by(1)
      end
      
  end
end


end