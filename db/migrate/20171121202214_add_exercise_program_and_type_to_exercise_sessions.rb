class AddExerciseProgramAndTypeToExerciseSessions < ActiveRecord::Migration[5.1]
  def change
    add_column(:exercise_sessions, :exercise_type_id, :bigint)
    add_column(:exercise_sessions, :exercise_program_id, :bigint)
    remove_column(:exercise_sessions, :type_name)
    remove_column(:exercise_sessions, :program)
  end
end
