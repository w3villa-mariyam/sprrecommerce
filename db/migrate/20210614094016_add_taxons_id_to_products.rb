class AddTaxonsIdToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :taxon_id, :integer
  end
end
