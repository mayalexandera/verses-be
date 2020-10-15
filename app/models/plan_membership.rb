# == Schema Information
#
# Table name: plan_memberships
#
#  id         :bigint           not null, primary key
#  plan_name  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  member_id  :integer          not null
#  plan_id    :integer          not null
#
# Indexes
#
#  index_plan_memberships_on_member_id  (member_id) UNIQUE
#
class PlanMembership < ApplicationRecord
  validates :plan_id, presence: true
  # after_create :create_plan_name_string
  
  belongs_to :member, class_name: "User"
  belongs_to :plan

  def create_plan_name_string
    self.update!(plan_name: self.plan.name)
  end
end
