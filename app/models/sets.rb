class Sets < ApplicationRecord
  def self.sets
    where(weight: 185, reps: 7, visit_id: 1)
  end
end
