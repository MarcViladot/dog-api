class AddBreedToDog < ActiveRecord::Migration[5.1]
  def change
    add_reference :dogs, :breed, foreign_key: true
  end
end
