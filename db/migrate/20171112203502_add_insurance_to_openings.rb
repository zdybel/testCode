class AddInsuranceToOpenings < ActiveRecord::Migration[5.0]
  def change
    add_column :openings, :insurance, :string
  end
end
