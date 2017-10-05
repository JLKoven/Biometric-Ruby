class Visits < ApplicationRecord
  def self.visits
    where(id:1, date:"5/10/2015", type: "bench", program:"initialFourSet")
  end
end
