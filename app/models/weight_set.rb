class WeightSet < ApplicationRecord
  belongs_to :exercise_session
  delegate :user, to: :exercise_session
end
