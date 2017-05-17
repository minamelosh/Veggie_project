class CreateUserVeggies < ActiveRecord::Migration
  def change
    create_table :user_veggies do |t|
      t.integer :user_id, null: false
      t.integer :vegetable_id, null: false

      t.timestamps
    end
  end
end
