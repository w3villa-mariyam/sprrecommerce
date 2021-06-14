class CreatePromotions < ActiveRecord::Migration[6.1]
  def change
    create_table :promotions do |t|
      t.string :name
      t.text :discription
      t.integer :code
      t.integer :product_category_id

      t.timestamps
    end
  end
end
