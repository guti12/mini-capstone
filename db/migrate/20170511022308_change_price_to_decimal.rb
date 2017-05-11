class ChangePriceToDecimal < ActiveRecord::Migration[5.0]
  def change
  	change_column :gelatos, :price, :decimal, precision: 4, scale: 2
  end
end
