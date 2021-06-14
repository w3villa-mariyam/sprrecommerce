class CreateOptionTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :option_types do |t|
      t.string :name
      t.string :value

      t.timestamps
    end
  end
end
