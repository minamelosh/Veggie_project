class CreateMonths < ActiveRecord::Migration
  def change
    create_table :months do |t|
      t.string :name, null: false
      t.integer :vegetable_id

      t.timestamps
  end
end
