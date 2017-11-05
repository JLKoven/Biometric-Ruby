class CreateGeneralStats < ActiveRecord::Migration[5.1]
  def change
    create_table :general_stats do |t|
      t.datetime :date, null: false
      t.string :weight, null: false
      t.string :weight_avg
      t.string :cal, null: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
