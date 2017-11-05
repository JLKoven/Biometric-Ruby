class CreateWeightSets < ActiveRecord::Migration[5.1]
  def change
    create_table :weight_sets do |t|
      t.string :weight, null: false
      t.string :reps, null: false
      t.references :exercise_session, foreign_key: true

      t.timestamps
    end
  end
end
