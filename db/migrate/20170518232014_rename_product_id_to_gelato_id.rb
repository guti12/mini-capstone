class RenameProductIdToGelatoId < ActiveRecord::Migration[5.0]
  def change
  	rename_column :images, :product_id, :gelato_id
  end
end
