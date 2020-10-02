class CreateApiV1PlanMemberships < ActiveRecord::Migration[6.0]
  def change
    create_table :plan_memberships do |t|
      t.integer :member_id, null: false
      t.integer :plan_id, null: false

      t.timestamps
    end
  end
end