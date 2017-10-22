require 'rails_helper'

RSpec.describe "weight_sets/index", type: :view do
  before(:each) do
    assign(:weight_sets, [
      WeightSet.create!(
        :weight => "",
        :reps => "",
        :exercise_session => "",
        :user => nil
      ),
      WeightSet.create!(
        :weight => "",
        :reps => "",
        :exercise_session => "",
        :user => nil
      )
    ])
  end

  it "renders a list of weight_sets" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
