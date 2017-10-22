require 'rails_helper'

RSpec.describe "weight_sets/new", type: :view do
  before(:each) do
    assign(:weight_set, WeightSet.new(
      :weight => "",
      :reps => "",
      :exercise_session => "",
      :user => nil
    ))
  end

  it "renders new weight_set form" do
    render

    assert_select "form[action=?][method=?]", weight_sets_path, "post" do

      assert_select "input[name=?]", "weight_set[weight]"

      assert_select "input[name=?]", "weight_set[reps]"

      assert_select "input[name=?]", "weight_set[exercise_session]"

      assert_select "input[name=?]", "weight_set[user_id]"
    end
  end
end
