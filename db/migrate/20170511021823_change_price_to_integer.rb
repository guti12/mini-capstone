class ChangePriceToInteger < ActiveRecord::Migration[5.0]
  def change
  	change_column :gelatos, :price, :integer
  end
end
