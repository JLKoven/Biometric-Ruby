class WeightSet < ApplicationRecord
  belongs_to :user #it should not though
  belongs_to :exercise_session
end
