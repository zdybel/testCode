class DropUsersTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :users
    change_column_default :requests, :confirmed, from: nil, to: false
    change_column_default :requests, :matched, from: nil, to: false
    change_column_default :openings, :matched, from: nil, to: false
    change_column_default :openings, :matched, from: nil, to: false
    remove_column :openings, :user_id, :integer
    remove_column :requests, :user_id, :integer
  end
end
