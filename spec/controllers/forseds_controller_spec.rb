require 'rails_helper'

RSpec.describe ForsedsController, type: :controller do

  describe "GET #index" do
    it "returns 200" do
      get :index
      expect(response).to be_ok
    end

    it "reverse show forseds" do
      @forsed1 = FactoryGirl.create(:forsed, price: 1234.1)
      @forsed2 = FactoryGirl.create(:forsed, price: 1236.1)
      get :index
      assigns(:forseds).should == Forsed.all.reverse
    end
  end

  describe "GET #new" do
    it "returns 200" do
      get :new
      expect(response).to be_ok
    end
  end

  describe "GET #create" do
    it "create" do
      forsed_params = FactoryGirl.attributes_for(:forsed)
      expect { post :create, :forsed => forsed_params }.to change(Forsed, :count).by(1)
    end

    it "re-renders the new method" do
      forsed_params = FactoryGirl.attributes_for(:forsed, price: "asd")
      expect(post :create, forsed: forsed_params).to render_template :new
    end
  end

end
