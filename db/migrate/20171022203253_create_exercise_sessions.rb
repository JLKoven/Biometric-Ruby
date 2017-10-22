class CreateExerciseSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :exercise_sessions do |t|
      t.datetime :date
      t.string :type_name
      t.string :program
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
