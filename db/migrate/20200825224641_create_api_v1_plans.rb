class CreateApiV1Plans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.string :name, unique: true
      t.monetize :price
      t.string :description
      t.string :price_string
      t.timestamps
    end
  end
end
