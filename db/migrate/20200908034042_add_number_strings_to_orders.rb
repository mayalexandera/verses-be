class AddNumberStringsToOrders < ActiveRecord::Migration[6.0]
  add_column :orders, :total_cost_string, :string
  add_column :orders, :sub_total_string, :string
  add_column :orders, :tax_string, :string
  add_column :orders, :shipping_cost_string, :string
  add_column :order_items, :total_cost_string, :string
  def change
  end
end
