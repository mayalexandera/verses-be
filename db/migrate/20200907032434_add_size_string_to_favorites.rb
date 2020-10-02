class AddSizeStringToFavorites < ActiveRecord::Migration[6.0]
  def change
    add_column :favorites, :size_string, :string
  end
end
