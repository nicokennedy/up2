class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.references :supply, null: false, foreign_key: true
      t.integer :hora_hombre
      t.integer :hora_maquina
      t.integer :price
      t.datetime :date_production
      t.integer :quantity
      t.string :product_name

      t.timestamps
    end
  end
end
