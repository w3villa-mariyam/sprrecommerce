class AddPropertiesToProduct < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :properties, :string
  end
end
