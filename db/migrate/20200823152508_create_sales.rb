class CreateSales < ActiveRecord::Migration[6.0]
  def change
    create_table :sales do |t|
      t.string :channel
      t.string :invoiced
      t.integer :channel_price
      t.integer :discount

      t.timestamps
    end
  end
end
