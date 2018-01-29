class AddUserToOwners < ActiveRecord::Migration[5.1]
  def change
    add_reference :owners, :user, foreign_key: true
  end
end
