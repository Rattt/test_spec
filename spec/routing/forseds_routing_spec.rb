require "rails_helper"

RSpec.describe ForsedsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin").to route_to("forseds#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/new").to route_to("forseds#new")
    end

    it "routes to #create" do
      expect(:post => "/admin").to route_to("forseds#create")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/1").to route_to("forseds#destroy", :id => "1")
    end

  end
end
