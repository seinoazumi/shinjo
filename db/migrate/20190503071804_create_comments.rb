class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :comment, null: false
      t.references :user, index: true
      t.references :restaurant, index: true
      t.timestamps
    end
  end
end
