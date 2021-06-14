class CreateShippingCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :shipping_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
