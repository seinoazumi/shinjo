class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name, null: false
      t.string :budget_d
      t.string :budget_n
      t.string :info
      t.text :comment

      t.timestamps
    end
  end
end
