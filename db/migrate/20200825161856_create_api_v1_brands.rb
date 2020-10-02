class CreateApiV1Brands < ActiveRecord::Migration[6.0]
  def change
    create_table :brands do |t|
      t.string :name, null: false, unique: true
      t.string :url
      t.index :name, unique: true
      t.string :size_chart

      t.timestamps
    end
  end
end
