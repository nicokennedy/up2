class CreateSupplies < ActiveRecord::Migration[6.0]
  def change
    create_table :supplies do |t|
      t.integer :price
      t.string :unit_measurment
      t.string :name
      t.integer :quantity

      t.timestamps
    end
  end
end
