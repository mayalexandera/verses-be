# == Schema Information
#
# Table name: orders
#
#  id                     :bigint           not null, primary key
#  number                 :integer
#  order_date             :datetime
#  ordered_date           :string
#  shipped_date           :datetime
#  shipping_cost_cents    :integer          default(0), not null
#  shipping_cost_currency :string           default("USD"), not null
#  shipping_cost_string   :string
#  sub_total_cents        :integer          default(0), not null
#  sub_total_currency     :string           default("USD"), not null
#  sub_total_string       :string
#  tax_cents              :integer          default(0), not null
#  tax_currency           :string           default("USD"), not null
#  tax_string             :string
#  total_cost_cents       :integer          default(0), not null
#  total_cost_currency    :string           default("USD"), not null
#  total_cost_string      :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  member_id              :integer
#  plan_membership_id     :integer
#
# Indexes
#
#  index_orders_on_member_id  (member_id)
#
class Order < ApplicationRecord
  monetize :total_cost_cents, :tax_cents, :sub_total_cents, :shipping_cost_cents, allow_nil: true

  validates :member_id, presence: true
  validates :shipped_date, :order_date, :shipping_cost, :tax, :number, :total_cost, presence: true, allow_nil: true
  validates :plan_membership_id, presence: true

  belongs_to :member, class_name: "User", foreign_key: "member_id"
  has_many :order_items
  has_many :products, through: :order_items


  def checkout
   cart = Cart.find_by(member_id: self.member_id)
   cart.cart_items.map{ |cart_item| OrderItem.create_order_item(cart_item, self.id) }
  
   self.order_items.map{ |order_item| order_item.calculate_item_total }
   self.order_items.map{ |order_item| order_item.update_stock(order_item.size_id, order_item.quantity) }
   self.calculate_costs
   cart.cart_items.map{ |cart_item| cart_item.destroy!}
  end
  
  def calculate_costs 
    self.calculate_subtotal
    self.calculate_shipping
    self.calculate_order_tax
    self.calculate_total
    self.create_price_strings
  end

  def calculate_subtotal
    if self.order_items.count === 1 
      self.update!(sub_total: self.order_items.first.price)
    else
      cost = Money.new(0)
      self.order_items.map{ |order_item| cost += order_item.price }
      self.update!(sub_total: cost)
    end
  end

  def calculate_shipping
    self.update!(shipping_cost: self.sub_total/10)
  end

  def calculate_order_tax
    self.update!(tax: self.sub_total * 0.0875)
  end

  def calculate_total
    self.update!(
      total_cost: Money.new(self.tax + self.sub_total + self.shipping_cost)
    )
  end

  def create_price_strings
    self.update!(total_cost_string: self.total_cost.format)
    self.update!(sub_total_string: self.sub_total.format)
    self.update!(tax_string: self.tax.format)
    self.update!(shipping_cost_string: self.shipping_cost.format)
    self.update!(ordered_date: self.order_date.strftime("%b %e, %Y"))
  end

end
