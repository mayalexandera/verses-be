class AddNumberOfItemsToPlans < ActiveRecord::Migration[6.0]
  def change
    add_column :plans, :items, :integer
    add_column :plans, :features, :text
    remove_column :plans, :name
  end
end
6