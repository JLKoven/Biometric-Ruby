require "rails_helper"

RSpec.describe ExerciseProgramsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/exercise_programs").to route_to("exercise_programs#index")
    end

    it "routes to #new" do
      expect(:get => "/exercise_programs/new").to route_to("exercise_programs#new")
    end

    it "routes to #show" do
      expect(:get => "/exercise_programs/1").to route_to("exercise_programs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/exercise_programs/1/edit").to route_to("exercise_programs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/exercise_programs").to route_to("exercise_programs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/exercise_programs/1").to route_to("exercise_programs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/exercise_programs/1").to route_to("exercise_programs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/exercise_programs/1").to route_to("exercise_programs#destroy", :id => "1")
    end

  end
end
