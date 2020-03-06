class AddColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_column :users, :balance, :decimal, :precision => 8, :scale => 2
  end
end
