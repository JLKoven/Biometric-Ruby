class ExerciseSession < ApplicationRecord
  def self.exercise_session
    where(id:1, user_id:1, date:"5/10/2015", type: "bench", program:"initialFourSet")
  end
end
