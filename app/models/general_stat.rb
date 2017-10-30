class GeneralStat < ApplicationRecord
  belongs_to :user

  before_save :calculate_average_weight

  DEFAULT_LIMIT = 7

  def calculate_average_weight(limit = DEFAULT_LIMIT)
    @limit = limit - 1
    self.weight_avg = (total_weight / limit).round(2)
  end

private

# inject is used to add together items in an array
  def total_weight
    self.class.previous_stats(@limit, date).inject(0) do |total, stat|
      total + stat.weight.to_f
    end + weight.to_f
  end

  # fetches the last limit items from before the current item's date
  # generates the following sql:
    # SELECT  "general_stats"."weight" FROM "general_stats"
    # WHERE (date < '2017-09-09 00:00:00')
    # ORDER BY "general_stats"."date" DESC LIMIT $1  [["LIMIT", 6]]
  def self.previous_stats(limit, date = DateTime.now)
    where("date < ?", date).select(:weight).limit(limit).order(date: :desc)
  end
end
