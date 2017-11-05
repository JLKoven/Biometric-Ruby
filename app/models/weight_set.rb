class WeightSet < ApplicationRecord
  belongs_to :exercise_session
  has_one :user, through: :exercise_session 
end
