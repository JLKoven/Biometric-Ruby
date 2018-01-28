class GeneralStat < ApplicationRecord
  belongs_to :user

  validates_presence_of :date
  validates_presence_of :weight
  validates_presence_of :user_id

  validates :weight, :numericality => { :greater_than_or_equal_to => 0 }
  validates :cal, :numericality => { :greater_than_or_equal_to => 0 }


  before_save :calculate_average_weight

  LIMIT = 7

  def calculate_average_weight
    self.weight_avg = (total_weight / LIMIT).round(2)
  end

  def self.for_page(page, current_user, page_limit=10)
#@exercise_programs = ExerciseProgram.where('exercise_programs.user_id = ?', current_user.id).limit(10).offset(@page.to_i * 10)
#@exercise_programs = ExerciseProgram.for_page(@page)
#    page_limit = 10
    where('general_stats.user_id = ?', current_user.id)
    .limit(page_limit)
    .offset(page.to_i * page_limit)
  end



private

# inject is used to add together items in an array
  def total_weight
    self.class.previous_stats(date).inject(0) do |total, stat|
      total + stat.weight.to_f
    end
  end

  # fetches the last limit items from before the current item's date
  # generates the following sql:
    # SELECT  "general_stats"."weight" FROM "general_stats"
    # WHERE (date < '2017-09-09 00:00:00')
    # ORDER BY "general_stats"."date" DESC LIMIT $1  [["LIMIT", 6]]
  def self.previous_stats(date)
    where("date < ?", date).select(:weight).limit(LIMIT).order(date: :desc)
  end
end
