class CreateExerciseSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :exercise_sessions do |t|
      t.datetime :date, null: false
      t.string :type_name, null: false
      t.string :program, null: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
