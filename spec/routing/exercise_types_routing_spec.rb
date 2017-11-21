require "rails_helper"

RSpec.describe ExerciseTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/exercise_types").to route_to("exercise_types#index")
    end

    it "routes to #new" do
      expect(:get => "/exercise_types/new").to route_to("exercise_types#new")
    end

    it "routes to #show" do
      expect(:get => "/exercise_types/1").to route_to("exercise_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/exercise_types/1/edit").to route_to("exercise_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/exercise_types").to route_to("exercise_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/exercise_types/1").to route_to("exercise_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/exercise_types/1").to route_to("exercise_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/exercise_types/1").to route_to("exercise_types#destroy", :id => "1")
    end

  end
end
