class AddInsuranceToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :insurance, :string
  end
end
