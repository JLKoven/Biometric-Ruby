class CreateGeneralStats < ActiveRecord::Migration[5.1]
  def change
    create_table :general_stats do |t|
      t.datetime "date", null: false
      t.string "weight", null: false
      t.string "weight_avg", null: false
      t.string "cal", null: false
      t.references :user, null: false

      t.timestamps
    end
  end
end
