require "rails_helper"

RSpec.describe ExerciseSessionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/exercise_sessions").to route_to("exercise_sessions#index")
    end

    it "routes to #new" do
      expect(:get => "/exercise_sessions/new").to route_to("exercise_sessions#new")
    end

    it "routes to #show" do
      expect(:get => "/exercise_sessions/1").to route_to("exercise_sessions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/exercise_sessions/1/edit").to route_to("exercise_sessions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/exercise_sessions").to route_to("exercise_sessions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/exercise_sessions/1").to route_to("exercise_sessions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/exercise_sessions/1").to route_to("exercise_sessions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/exercise_sessions/1").to route_to("exercise_sessions#destroy", :id => "1")
    end

  end
end
