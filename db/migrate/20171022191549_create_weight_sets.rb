class CreateWeightSets < ActiveRecord::Migration[5.1]
  def change
    create_table :weight_sets do |t|
      t.string :weight
      t.string :reps
      t.references :exercise_session
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
