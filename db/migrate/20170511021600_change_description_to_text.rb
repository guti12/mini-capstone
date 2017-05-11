class ChangeDescriptionToText < ActiveRecord::Migration[5.0]
  def change
  	change_column :gelatos, :description, :text
  end
end
