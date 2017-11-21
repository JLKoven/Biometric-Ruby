require 'rails_helper'

RSpec.describe "exercise_types/show", type: :view do
  before(:each) do
    @exercise_type = assign(:exercise_type, ExerciseType.create!(
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
