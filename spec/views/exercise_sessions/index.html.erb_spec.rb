require 'rails_helper'

RSpec.describe "exercise_sessions/index", type: :view do
  before(:each) do
    assign(:exercise_sessions, [
      ExerciseSession.create!(
        :date => "",
        :type_name => "",
        :program => "",
        :user => nil
      ),
      ExerciseSession.create!(
        :date => "",
        :type_name => "",
        :program => "",
        :user => nil
      )
    ])
  end

  it "renders a list of exercise_sessions" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
