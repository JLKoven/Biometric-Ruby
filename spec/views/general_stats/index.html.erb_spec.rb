require 'rails_helper'

RSpec.describe "general_stats/index", type: :view do
  before(:each) do
    assign(:general_stats, [
      GeneralStat.create!(
        :date => "",
        :weight => "",
        :weight_avg => "",
        :cal => "",
        :user => nil
      ),
      GeneralStat.create!(
        :date => "",
        :weight => "",
        :weight_avg => "",
        :cal => "",
        :user => nil
      )
    ])
  end

  it "renders a list of general_stats" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
