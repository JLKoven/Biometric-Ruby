require 'rails_helper'

RSpec.describe "weight_sets/edit", type: :view do
  before(:each) do
    @weight_set = assign(:weight_set, WeightSet.create!(
      :weight => "",
      :reps => "",
      :exercise_session => "",
      :user => nil
    ))
  end

  it "renders the edit weight_set form" do
    render

    assert_select "form[action=?][method=?]", weight_set_path(@weight_set), "post" do

      assert_select "input[name=?]", "weight_set[weight]"

      assert_select "input[name=?]", "weight_set[reps]"

      assert_select "input[name=?]", "weight_set[exercise_session]"

      assert_select "input[name=?]", "weight_set[user_id]"
    end
  end
end
