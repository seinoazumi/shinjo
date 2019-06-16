class ChangeDetaTypeOfRestaurant < ActiveRecord::Migration[5.2]
  def change
    change_column :restaurants, :budget_d, :integer, default: 0
    change_column :restaurants, :budget_n, :integer, default: 0
  end
end
