class RemoveDoctorFromUser < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :doctor, :boolean
  end
end
