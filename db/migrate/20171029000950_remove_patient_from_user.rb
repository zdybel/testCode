class RemovePatientFromUser < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :Patient, :boolean
  end
end
