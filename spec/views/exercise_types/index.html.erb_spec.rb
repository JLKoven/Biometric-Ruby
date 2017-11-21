require 'rails_helper'

RSpec.describe "exercise_types/index", type: :view do
  before(:each) do
    assign(:exercise_types, [
      ExerciseType.create!(
        :name => "",
        :description => "Description"
      ),
      ExerciseType.create!(
        :name => "",
        :description => "Description"
      )
    ])
  end

  it "renders a list of exercise_types" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
