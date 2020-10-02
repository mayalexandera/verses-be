class CreateApiV1Carts < ActiveRecord::Migration[6.0]
  def change
    create_table :carts do |t|
      t.integer :member_id
      t.datetime :order_date
      t.datetime :shipped_date
      t.monetize :tax, null: false
      t.monetize :total_cost, null: false
      t.monetize :shipping_cost, null: false
      t.timestamps
    end
  end
end
