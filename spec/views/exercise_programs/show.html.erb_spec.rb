require 'rails_helper'

RSpec.describe "exercise_programs/show", type: :view do
  before(:each) do
    @exercise_program = assign(:exercise_program, ExerciseProgram.create!(
      :name => "",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Description/)
  end
end
