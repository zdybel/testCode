class AddColumnsToRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :requests, :patient_id, :integer
    add_index :requests, :patient_id
    add_column :openings, :office_id, :integer
    add_index :openings, :office_id
  end
end
