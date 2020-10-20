class AdddateStringsToOrder < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :ordered_date, :string
  end
end
