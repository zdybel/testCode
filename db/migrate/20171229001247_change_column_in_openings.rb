class ChangeColumnInOpenings < ActiveRecord::Migration[5.0]
  def change
    change_column_default :openings, :confirmed, from: nil, to: false
  end
end
