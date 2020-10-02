class AddDatesToOrders < ActiveRecord::Migration[6.0]
  def change
    remove_column :orders, :date, :datetime
    add_column :orders, :shipped_date, :datetime
    add_column :orders, :order_date, :datetime
    add_monetize :orders, :tax, null: false
    add_monetize :orders, :shipping_cost, null: false
    add_monetize :orders, :total_cost, null: false
    remove_monetize :carts, :tax, null: false
    remove_monetize :carts, :shipping_cost, null: false
    remove_monetize :carts, :total_cost, null: false
    remove_column :carts, :shipped_date, :datetime
    remove_column :carts, :order_date, :datetime
  end
end
