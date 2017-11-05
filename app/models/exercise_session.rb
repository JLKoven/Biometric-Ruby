class ExerciseSession < ApplicationRecord
  belongs_to :user
  has_many :weight_sets
end
