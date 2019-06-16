class RenameColumnToRestaurants < ActiveRecord::Migration[5.2]
  def change
    rename_column :restaurants, :decsription, :description
  end
end
