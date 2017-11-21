require 'rails_helper'

RSpec.describe "ExerciseTypes", type: :request do
  describe "GET /exercise_types" do
    it "works! (now write some real specs)" do
      get exercise_types_path
      expect(response).to have_http_status(200)
    end
  end
end
