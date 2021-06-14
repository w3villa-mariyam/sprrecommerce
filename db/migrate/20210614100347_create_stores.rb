class CreateStores < ActiveRecord::Migration[6.1]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :url
      t.string :seo_title
      t.string :meta_discription
      t.string :meta_keyword
      t.string :currency

      t.timestamps
    end
  end
end
