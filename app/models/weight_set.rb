class WeightSet < ApplicationRecord
  belongs_to :exercise_session
  has_one :user, through: :exercise_session
  has_one :exercise_type, through: :exercise_session

  validates :weight, :numericality => { :greater_than_or_equal_to => 0 }
  validates :reps, :numericality => { :greater_than_or_equal_to => 0 }

  def self.for_page(page, current_user, page_limit=10)
   joins(:exercise_session)
    .where('exercise_sessions.user_id = ?', current_user.id)
    .limit(page_limit)
    .offset(page.to_i * page_limit)
  end

end
