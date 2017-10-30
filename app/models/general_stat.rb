class GeneralStat < ApplicationRecord
  belongs_to :user

  before_save :calculate_average_weight

  DEFAULT_LIMIT = 7

  def calculate_average_weight(limit = DEFAULT_LIMIT)
    @limit = limit - 1
    self.weight_avg = (total_weight / limit).round(2)
  end

private

  def total_weight
    self.class.previous_stats(@limit, date).inject(0) do |total, stat|
      total + stat.weight.to_f
    end + weight.to_f
  end

  def self.previous_stats(limit, date = DateTime.now)
    where("date < ?", date).select(:weight).limit(limit).order(date: :desc)
  end
end
