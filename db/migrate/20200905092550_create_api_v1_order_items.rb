class CreateApiV1OrderItems < ActiveRecord::Migration[6.0]
  def change
    create_table :order_items do |t|
      t.integer :member_id, null: :false
      t.integer :size_id, null: :false
      t.integer :product_id, null: :false
      t.monetize :price, null: :false
      t.integer :quantity, null: :false
      t.index :member_id
      t.integer :order_id, null: false
      t.index [:order_id, :size_id], unique: true

      t.timestamps
    end
  end
end
