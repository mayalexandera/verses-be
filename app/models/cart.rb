# == Schema Information
#
# Table name: carts
#
#  id                :bigint           not null, primary key
#  total_cost_string :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  member_id         :integer
#
class Cart < ApplicationRecord
  validates :member_id, presence: true
  
  belongs_to :member, class_name: "User", foreign_key: "member_id"
  has_many :cart_items, dependent: :destroy
  has_many :products, through: :cart_items
  has_many :sizes, through: :products
  
  accepts_nested_attributes_for :products, allow_destroy: true
  accepts_nested_attributes_for :sizes, allow_destroy: true
  accepts_nested_attributes_for :cart_items, allow_destroy: true

  def create_price_string
    total = Money.new()
    self.cart_items.map{ |cart_item| total += cart_item.price} if self.cart_items
    puts total
    self.update!(total_cost_string: total.format)

  end


end
