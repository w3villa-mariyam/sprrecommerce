class CreateShippingMethods < ActiveRecord::Migration[6.1]
  def change
    create_table :shipping_methods do |t|
      t.string :name
      t.integer :zone_id
      t.integer :shipping_category_id
      t.integer :tax_category_id

      t.timestamps
    end
  end
end
