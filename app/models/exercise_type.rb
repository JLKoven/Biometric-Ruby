class ExerciseType < ApplicationRecord
  has_many :exercise_sessions
  belongs_to :user
end
