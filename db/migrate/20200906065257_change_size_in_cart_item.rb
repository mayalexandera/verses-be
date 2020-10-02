class ChangeSizeInCartItem < ActiveRecord::Migration[6.0]
  def change
    remove_column :cart_items, :size, :string 
    add_column :cart_items, :size_string, :string
  end
end
