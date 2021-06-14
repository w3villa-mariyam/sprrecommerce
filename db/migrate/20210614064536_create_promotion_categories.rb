class CreatePromotionCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :promotion_categories do |t|
      t.string :name
      t.integer :code

      t.timestamps
    end
  end
end
