class AddPriceStringToCartItem < ActiveRecord::Migration[6.0]
  def change
    add_column :carts, :total_cost_string, :string
  end
end
