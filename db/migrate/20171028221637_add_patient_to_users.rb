class AddPatientToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :patient, :boolean
  end
end
