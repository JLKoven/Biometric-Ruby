require 'rails_helper'

RSpec.describe GeneralStat, type: :model do

  it 'has default limit of 7' do
    expect(GeneralStat::LIMIT).to eq(7)
  end

  it 'calculate_average_weight should yield 20 from 20 20 20 15 25 10 30' do
#    total_weight = 20+20+20+15+25+10+30
    gen_stat = GeneralStat.new()
#    example_date = Date.today
#    prior_date_1 = example_date.
#    prior_date_2 = example_date.
#    prior_date_3 = example_date.
#    prior_date_4 = example_date.
#    prior_date_5 = example_date.
#    prior_date_6 = example_date.

#    allow(obj).to receive(:message).and_return(:value)
#:message can a function

    allow(gen_stat).to receive(:total_weight).and_return(20+20+20+15+25+10+30)
    #here, rspec is SENDing total_weight TO gen_stat
    #because it's not something.allow(), we know it's a general function, in this case, rspec's :)


#    expect(gen_stat.calculate_average_weight).to eq(20)
    expect(gen_stat.send(:calculate_average_weight)).to eq(20)
    #now we're telling rspec to SEND 'calc average weight' TO gen_stat
  end

  it 'make sure weight is not negative' do
    gen_stat = GeneralStat.new()
    gen_stat.weight = -20
    expect(gen_stat.valid?).to eq(false)
  end

  it 'make sure cal is not negative' do
    gen_stat = GeneralStat.new()
    gen_stat.cal = -20
    expect(gen_stat.valid?).to eq(false)
  end

end
