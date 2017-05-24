class RemoveGelatoIdFromOrders < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :gelato_id, :string

  end
end
