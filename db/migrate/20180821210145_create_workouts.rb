class CreateWorkouts < ActiveRecord::Migration[5.1]
  def change
    create_table :workouts do |t|
      t.string :name
      t.datetime :date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
