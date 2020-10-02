# == Schema Information
#
# Table name: plans
#
#  id             :bigint           not null, primary key
#  description    :string
#  name           :string
#  price_cents    :integer          default(0), not null
#  price_currency :string           default("USD"), not null
#  price_string   :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Plan < ApplicationRecord
  validates :name, :price, :description, presence: true
  monetize :price_cents, allow_nil: true

  has_many :plan_memberships
  has_many :members, through: :plan_memberships, source: :user

  after_create :create_price_string
  

  def create_price_string 
    self.update!(price_string: self.price.format)
  end
  

end
