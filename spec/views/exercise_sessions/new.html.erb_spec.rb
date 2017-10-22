require 'rails_helper'

RSpec.describe "exercise_sessions/new", type: :view do
  before(:each) do
    assign(:exercise_session, ExerciseSession.new(
      :date => "",
      :type_name => "",
      :program => "",
      :user => nil
    ))
  end

  it "renders new exercise_session form" do
    render

    assert_select "form[action=?][method=?]", exercise_sessions_path, "post" do

      assert_select "input[name=?]", "exercise_session[date]"

      assert_select "input[name=?]", "exercise_session[type_name]"

      assert_select "input[name=?]", "exercise_session[program]"

      assert_select "input[name=?]", "exercise_session[user_id]"
    end
  end
end
