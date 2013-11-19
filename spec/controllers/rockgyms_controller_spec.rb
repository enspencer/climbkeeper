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

    # describe "with invalid params" do
    #   it "assigns a newly created but unsaved gym as @rockgym" do
    #     # Trigger the behavior that occurs when invalid params are submitted
    #     Rockgym.any_instance.stub(:save).and_return(false)
    #     post :create, {:rockgym => { "title" => "invalid value" }}
    #     assigns(:rockgym).should be_a_new(Rockgym)
    #   end

    #   it "re-renders the 'new' template" do
    #     # Trigger the behavior that occurs when invalid params are submitted
    #     Post.any_instance.stub(:save).and_return(false)
    #     post :create, {:post => { "title" => "invalid value" }}, valid_session
    #     response.should render_template("new")
    #   end
  end
end


end