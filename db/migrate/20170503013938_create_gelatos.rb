class CreateGelatos < ActiveRecord::Migration[5.0]
  def change
    create_table :gelatos do |t|
      t.string :flavor
      t.integer :price
      t.string :image
      t.string :description

      t.timestamps
    end
  end
end
