require 'rails_helper'

RSpec.describe "ExerciseSessions", type: :request do
  describe "GET /exercise_sessions" do
    it "works! (now write some real specs)" do
      get exercise_sessions_path
      expect(response).to have_http_status(200)
    end
  end
end
