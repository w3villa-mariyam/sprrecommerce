class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :sku
      t.string :discription
      t.integer :price
      t.string :meta_title
      t.text :meta_discription
      t.string :meta_keyword
      t.integer :tax_category_id
      t.integer :varient_id
      t.integer :option_type_id

      t.timestamps
    end
  end
end
