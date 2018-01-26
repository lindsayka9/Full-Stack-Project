class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.integer :age
      t.string :color
      t.string :gender
      t.string :owner

      t.timestamps
    end
  end
end
