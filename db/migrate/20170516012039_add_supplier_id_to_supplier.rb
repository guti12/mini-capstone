class AddSupplierIdToSupplier < ActiveRecord::Migration[5.0]
  def change
  	add_column :gelatos, :supplier_id, :integer
  end
end