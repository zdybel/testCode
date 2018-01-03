class ChangeColumnInPatients < ActiveRecord::Migration[5.0]
  def change
    change_column :requests, :matched, :integer
    remove_column :openings, :matched
    drop_table :matches
  end
end
