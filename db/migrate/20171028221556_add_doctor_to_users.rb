class AddDoctorToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :doctor, :boolean
  end
end
