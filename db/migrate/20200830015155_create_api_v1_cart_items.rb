class CreateApiV1CartItems < ActiveRecord::Migration[6.0]
  def change
    create_table :cart_items do |t|
      t.integer :cart_id
      t.integer :product_id
      t.integer :quantity, null: false, default: 1
      t.string :size
      t.integer :size_id
    end
  end
end
