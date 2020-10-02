class AddIndexOnPlanMembership < ActiveRecord::Migration[6.0]
  def change
    add_index :plan_memberships, [:member_id], unique: true
  end
end
