class CreateUsersVeggies < ActiveRecord::Migration
  def change
    create_table :users_veggies do |t|
      t.integer :user_id, null: false
      t.integer :vegetable_id, null: false

      t.timestamps
  end
end
