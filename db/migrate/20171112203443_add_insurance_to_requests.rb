class AddInsuranceToRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :requests, :insurance, :string
  end
end
