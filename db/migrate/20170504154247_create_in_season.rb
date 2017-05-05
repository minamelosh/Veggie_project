class CreateInSeason < ActiveRecord::Migration
  def change
    create_table :in_season do |t|
      t.integer :month_id, null: false
      t.integer :vegetable_id, null: false

      t.timestamps
    end
  end
end
