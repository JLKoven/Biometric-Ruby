require 'rails_helper'

RSpec.describe "general_stats/edit", type: :view do
  before(:each) do
    @general_stat = assign(:general_stat, GeneralStat.create!(
      :date => "",
      :weight => "",
      :weight_avg => "",
      :cal => "",
      :user => nil
    ))
  end

  it "renders the edit general_stat form" do
    render

    assert_select "form[action=?][method=?]", general_stat_path(@general_stat), "post" do

      assert_select "input[name=?]", "general_stat[date]"

      assert_select "input[name=?]", "general_stat[weight]"

      assert_select "input[name=?]", "general_stat[weight_avg]"

      assert_select "input[name=?]", "general_stat[cal]"

      assert_select "input[name=?]", "general_stat[user_id]"
    end
  end
end
