require 'rails_helper'

RSpec.describe "exercise_sessions/edit", type: :view do
  before(:each) do
    @exercise_session = assign(:exercise_session, ExerciseSession.create!(
      :date => "",
      :type_name => "",
      :program => "",
      :user => nil
    ))
  end

  it "renders the edit exercise_session form" do
    render

    assert_select "form[action=?][method=?]", exercise_session_path(@exercise_session), "post" do

      assert_select "input[name=?]", "exercise_session[date]"

      assert_select "input[name=?]", "exercise_session[type_name]"

      assert_select "input[name=?]", "exercise_session[program]"

      assert_select "input[name=?]", "exercise_session[user_id]"
    end
  end
end
