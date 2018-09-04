class AddReferencesToMeals < ActiveRecord::Migration[5.1]
  def change
    add_reference :meals, :user, index: true
    add_foreign_key :meals, :users
  end
end
