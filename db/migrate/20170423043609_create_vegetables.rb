class CreateVegetables < ActiveRecord::Migration
  def change
    create_table :vegetables do |t|
      t.string :name, null: false
      t.integer :average_price, null: false

      t.timestamps
  end
end
