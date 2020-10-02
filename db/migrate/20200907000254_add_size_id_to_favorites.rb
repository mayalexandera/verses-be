class AddSizeIdToFavorites < ActiveRecord::Migration[6.0]
  def change
    add_column :favorites, :size_id, :integer
  end
end
