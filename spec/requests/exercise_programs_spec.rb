require 'rails_helper'

RSpec.describe "ExercisePrograms", type: :request do
  describe "GET /exercise_programs" do
    it "works! (now write some real specs)" do
      get exercise_programs_path
      expect(response).to have_http_status(200)
    end
  end
end
