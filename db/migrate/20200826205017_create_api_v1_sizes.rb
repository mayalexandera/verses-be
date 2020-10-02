class CreateApiV1Sizes < ActiveRecord::Migration[6.0]
  def change
    create_table :sizes do |t|
      t.integer :brand_id
      t.integer :product_id
      t.integer :product_number
      t.string :size
      t.string :colorway
      t.integer :stock
      t.index [:brand_id, :product_id, :size, :colorway], unique: true
    end
  end
end
