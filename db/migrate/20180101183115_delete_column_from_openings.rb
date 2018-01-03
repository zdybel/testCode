class DeleteColumnFromOpenings < ActiveRecord::Migration[5.0]
  def change
    remove_column :openings, :insurance, :string
    add_column :offices, :insurance, :string
  end
end
