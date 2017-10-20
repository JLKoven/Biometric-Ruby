# in the root directory of the rails project I ran:
# rails g migration CreateVisits
class CreateExerciseSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :exercise_sessions do |t|
      # pattern is:
      # t.data_type :column_name, options: comma_seporated
      t.datetime :date, null: false
      t.string :type_name, null: false
      t.string :program, null: false
      t.references :user, null: false

      t.timestamps
    end
  end
end
