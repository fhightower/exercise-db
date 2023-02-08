class AddLinksToExercises < ActiveRecord::Migration[7.0]
  def change
    add_reference :exercises, :links, null: true, foreign_key: true
  end
end
