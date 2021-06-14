class CreateTaxonomies < ActiveRecord::Migration[6.1]
  def change
    create_table :taxonomies do |t|
      t.string :name
      t.integer :category_id
      t.integer :taxon_id

      t.timestamps
    end
  end
end
