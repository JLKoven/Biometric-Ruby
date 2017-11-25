class WeightSet < ApplicationRecord
  belongs_to :exercise_session
  has_one :user, through: :exercise_session

  validates :weight, :numericality => { :greater_than_or_equal_to => 0 }
  validates :reps, :numericality => { :greater_than_or_equal_to => 0 }
end
