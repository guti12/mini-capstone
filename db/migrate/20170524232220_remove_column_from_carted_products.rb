class RemoveColumnFromCartedProducts < ActiveRecord::Migration[5.0]
  def change
    remove_column :carted_products, :order_id, :string

  end
end
