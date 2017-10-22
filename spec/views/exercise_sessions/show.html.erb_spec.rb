require 'rails_helper'

RSpec.describe "exercise_sessions/show", type: :view do
  before(:each) do
    @exercise_session = assign(:exercise_session, ExerciseSession.create!(
      :date => "",
      :type_name => "",
      :program => "",
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
