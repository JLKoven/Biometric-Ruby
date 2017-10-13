class WeightSet < ApplicationRecord
  def self.weightSet
    where(id:1, weight: 185, reps: 7, visit_id: 1)
  end
end
