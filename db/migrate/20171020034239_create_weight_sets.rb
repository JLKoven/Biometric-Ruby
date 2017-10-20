class CreateWeightSets < ActiveRecord::Migration[5.1]
  def change
    create_table :weight_sets do |t|
      t.string "weight", null: false
      t.string "reps", null: false
      t.references :exercise_session
      t.references :user

      t.timestamps
    end
  end
end
