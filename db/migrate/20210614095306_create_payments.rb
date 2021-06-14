class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.integer :amount
      t.integer :state_id
      t.string :store
      t.string :name
      t.string :discription

      t.timestamps
    end
  end
end
