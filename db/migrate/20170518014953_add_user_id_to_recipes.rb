class AddUserIdToRecipes < ActiveRecord::Migration[5.0]
  def change
    add_column :gelatos, :user_id, :integer
  end
end
