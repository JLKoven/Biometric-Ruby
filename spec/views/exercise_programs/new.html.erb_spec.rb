require 'rails_helper'

RSpec.describe "exercise_programs/new", type: :view do
  before(:each) do
    assign(:exercise_program, ExerciseProgram.new(
      :name => "",
      :description => "MyString"
    ))
  end

  it "renders new exercise_program form" do
    render

    assert_select "form[action=?][method=?]", exercise_programs_path, "post" do

      assert_select "input[name=?]", "exercise_program[name]"

      assert_select "input[name=?]", "exercise_program[description]"
    end
  end
end
