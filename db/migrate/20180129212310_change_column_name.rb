class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :owners, :first_name, :name
  end
end
