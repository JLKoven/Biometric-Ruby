require "rails_helper"

RSpec.describe GeneralStatsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/general_stats").to route_to("general_stats#index")
    end

    it "routes to #new" do
      expect(:get => "/general_stats/new").to route_to("general_stats#new")
    end

    it "routes to #show" do
      expect(:get => "/general_stats/1").to route_to("general_stats#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/general_stats/1/edit").to route_to("general_stats#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/general_stats").to route_to("general_stats#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/general_stats/1").to route_to("general_stats#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/general_stats/1").to route_to("general_stats#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/general_stats/1").to route_to("general_stats#destroy", :id => "1")
    end

  end
end
