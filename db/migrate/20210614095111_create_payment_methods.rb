class CreatePaymentMethods < ActiveRecord::Migration[6.1]
  def change
    create_table :payment_methods do |t|
      t.string :name
      t.text :discription
      t.string :store
      t.string :provider

      t.timestamps
    end
  end
end
