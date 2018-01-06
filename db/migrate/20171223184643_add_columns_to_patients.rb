class AddColumnsToPatients < ActiveRecord::Migration[5.0]
  def change
    add_column :patients, :first_name, :string
    add_column :patients, :last_name, :string
    add_column :patients, :insurance, :string
    add_column :patients, :identity, :string
    
  end
end
