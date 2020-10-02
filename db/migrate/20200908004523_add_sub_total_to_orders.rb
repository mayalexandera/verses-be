class AddSubTotalToOrders < ActiveRecord::Migration[6.0]
  def change
    add_monetize :orders, :sub_total
  end
end
