class GeneralStat < ApplicationRecord
  def self.general_stat
    where(id: 1, user_id: 1, date: "5.15.2015", weight: 180, weight_avg: 182.2; cal: 2900)
  end
end
