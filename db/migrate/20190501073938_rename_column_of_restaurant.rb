class RenameColumnOfRestaurant < ActiveRecord::Migration[5.2]
  def change
    rename_column :restaurants, :info, :header
    rename_column :restaurants, :comment, :decsription
  end
end
