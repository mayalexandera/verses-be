class CreateApiV1Products < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.integer :product_number, null: false
      t.integer :brand_id, null: false
      t.monetize :price
      t.text :description, null: false
      t.text :images
      t.string :details
      t.string :fit_details
      t.string :product_type, null: false
      t.float :discount
      t.index [:brand_id, :product_number], unique: true
      t.string :price_string
      t.string :size_range

      t.timestamps
    end
  end
end
