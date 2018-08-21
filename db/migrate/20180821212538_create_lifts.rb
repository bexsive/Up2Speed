class CreateLifts < ActiveRecord::Migration[5.1]
  def change
    create_table :lifts do |t|
      t.integer :reps
      t.integer :weight
      t.time :duration

      t.references :workout, foreign_key: true

      t.timestamps
    end
  end
end
