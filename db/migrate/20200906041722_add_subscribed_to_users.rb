class AddSubscribedToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :subscribed, :boolean, default: false
  end
end
