class CreateTaxRates < ActiveRecord::Migration[6.1]
  def change
    create_table :tax_rates do |t|
      t.string :name
      t.integer :rate
      t.integer :tax_category_id
      t.integer :zone

      t.timestamps
    end
  end
end
