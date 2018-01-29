class RemoveOwnerFromPets < ActiveRecord::Migration[5.1]
  def change
    remove_column :pets, :owner, :string
  end
end
