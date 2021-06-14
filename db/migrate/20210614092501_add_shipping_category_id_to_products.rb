class AddShippingCategoryIdToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :shipping_category_id, :integer
  end
end
