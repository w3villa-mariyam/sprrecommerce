class CreateProductOptionTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :product_option_types do |t|
      t.integer :option_type_id
      t.integer :product_id

      t.timestamps
    end
  end
end
