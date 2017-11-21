require 'rails_helper'

RSpec.describe "exercise_programs/edit", type: :view do
  before(:each) do
    @exercise_program = assign(:exercise_program, ExerciseProgram.create!(
      :name => "",
      :description => "MyString"
    ))
  end

  it "renders the edit exercise_program form" do
    render

    assert_select "form[action=?][method=?]", exercise_program_path(@exercise_program), "post" do

      assert_select "input[name=?]", "exercise_program[name]"

      assert_select "input[name=?]", "exercise_program[description]"
    end
  end
end
