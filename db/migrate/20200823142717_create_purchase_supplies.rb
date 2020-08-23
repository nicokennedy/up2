class CreatePurchaseSupplies < ActiveRecord::Migration[6.0]
  def change
    create_table :purchase_supplies do |t|
      t.references :purchase
      t.references :supply

      t.timestamps
    end
  end
end
