require 'rails_helper'

RSpec.describe "weight_sets/show", type: :view do
  before(:each) do
    @weight_set = assign(:weight_set, WeightSet.create!(
      :weight => "",
      :reps => "",
      :exercise_session => "",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
