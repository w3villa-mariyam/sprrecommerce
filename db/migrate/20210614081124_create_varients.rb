class CreateVarients < ActiveRecord::Migration[6.1]
  def change
    create_table :varients do |t|
      t.string :name
      t.integer :price
      t.integer :sku
      t.integer :weight
      t.integer :height
      t.integer :width
      t.integer :depth
      t.integer :cost_price

      t.timestamps
    end
  end
end
