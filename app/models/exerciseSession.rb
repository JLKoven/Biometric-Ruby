class ExerciseSession < ApplicationRecord
  def self.exerciseSession
    where(id:1, date:"5/10/2015", type: "bench", program:"initialFourSet")
  end
end
