class AddPlanNameToMembership < ActiveRecord::Migration[6.0]
  def change
    add_column :plan_memberships, :plan_name, :string
  end
end
