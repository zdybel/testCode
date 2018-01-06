class Offices < ActiveRecord::Migration[5.0]
  def change
    add_column :offices, :office_name, :string
  end
end
