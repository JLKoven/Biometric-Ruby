require "rails_helper"

RSpec.describe WeightSetsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/weight_sets").to route_to("weight_sets#index")
    end

    it "routes to #new" do
      expect(:get => "/weight_sets/new").to route_to("weight_sets#new")
    end

    it "routes to #show" do
      expect(:get => "/weight_sets/1").to route_to("weight_sets#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/weight_sets/1/edit").to route_to("weight_sets#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/weight_sets").to route_to("weight_sets#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/weight_sets/1").to route_to("weight_sets#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/weight_sets/1").to route_to("weight_sets#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/weight_sets/1").to route_to("weight_sets#destroy", :id => "1")
    end

  end
end
