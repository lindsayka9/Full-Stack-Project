class RemoveLastNameFromOwner < ActiveRecord::Migration[5.1]
  def change
    remove_column :owners, :last_name, :string
  end
end
