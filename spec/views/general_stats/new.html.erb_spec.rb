require 'rails_helper'

RSpec.describe "general_stats/new", type: :view do
  before(:each) do
    assign(:general_stat, GeneralStat.new(
      :date => "",
      :weight => "",
      :weight_avg => "",
      :cal => "",
      :user => nil
    ))
  end

  it "renders new general_stat form" do
    render

    assert_select "form[action=?][method=?]", general_stats_path, "post" do

      assert_select "input[name=?]", "general_stat[date]"

      assert_select "input[name=?]", "general_stat[weight]"

      assert_select "input[name=?]", "general_stat[weight_avg]"

      assert_select "input[name=?]", "general_stat[cal]"

      assert_select "input[name=?]", "general_stat[user_id]"
    end
  end
end
