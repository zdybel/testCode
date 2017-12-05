class CreateOpenings < ActiveRecord::Migration[5.0]
  def change
    create_table :openings do |t|
      t.string :dayofweek
      t.string :timeofday
      t.string :specialty
      t.text :notes
      t.boolean :matched
      t.boolean :confirmed
      t.integer :user_id

      t.timestamps
    end
  end
end
