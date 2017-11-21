require 'rails_helper'

RSpec.describe "exercise_programs/index", type: :view do
  before(:each) do
    assign(:exercise_programs, [
      ExerciseProgram.create!(
        :name => "",
        :description => "Description"
      ),
      ExerciseProgram.create!(
        :name => "",
        :description => "Description"
      )
    ])
  end

  it "renders a list of exercise_programs" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
