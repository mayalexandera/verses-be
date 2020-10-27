class AlterIndexOnProducts < ActiveRecord::Migration[6.0]
  def change
    remove_index :products, [:brand_id, :product_number]
    add_index :products, [:brand_id, :product_number, :images], unique: true
  end
end
