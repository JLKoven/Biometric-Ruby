class ExerciseSession < ApplicationRecord
  belongs_to :user
  belongs_to :exercise_type
  belongs_to :exercise_program 
  has_many :weight_sets
end
