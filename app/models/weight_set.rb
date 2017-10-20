class WeightSet < ApplicationRecord
  def self.weight_set
    where(id:1, user_id:1, weight: 185, reps: 7, visit_id: 1)
  end
end
