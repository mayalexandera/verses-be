class CreateApiV1Orders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :number
      t.integer :plan_membership_id
      t.integer :member_id
      t.datetime :date
      t.index :member_id
      t.timestamps
    end
  end
end
