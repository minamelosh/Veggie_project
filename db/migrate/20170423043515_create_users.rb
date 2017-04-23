class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :location, null: false
      t.string :password_hash, null: false
      t.integer :average_price, null: false

      t.timestamps
  end
end
