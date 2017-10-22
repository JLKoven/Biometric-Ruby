require 'rails_helper'

RSpec.describe "general_stats/show", type: :view do
  before(:each) do
    @general_stat = assign(:general_stat, GeneralStat.create!(
      :date => "",
      :weight => "",
      :weight_avg => "",
      :cal => "",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
