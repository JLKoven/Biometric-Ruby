class AddUserIdToTypeAndProgram < ActiveRecord::Migration[5.1]
  def change
    add_column(:exercise_programs, :user_id, :bigint)
    add_column(:exercise_types, :user_id, :bigint)
  end
end
