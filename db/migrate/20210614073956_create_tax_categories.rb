class CreateTaxCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :tax_categories do |t|
      t.string :name
      t.string :discription
      t.integer :code

      t.timestamps
    end
  end
end
