# == Schema Information
#
# Table name: order_items
#
#  id                :bigint           not null, primary key
#  price_cents       :integer          default(0), not null
#  price_currency    :string           default("USD"), not null
#  quantity          :integer
#  total_cost_string :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  member_id         :integer
#  order_id          :integer          not null
#  product_id        :integer
#  size_id           :integer
#
# Indexes
#
#  index_order_items_on_member_id             (member_id)
#  index_order_items_on_order_id_and_size_id  (order_id,size_id) UNIQUE
#
class OrderItem < ApplicationRecord
  monetize :price_cents, allow_nil: true
  validates :order_id, :size_id, :product_id, :quantity, presence: true

  belongs_to :order
  has_one :size
  has_one :product

  after_create :calculate_item_total

  def calculate_item_total
    total = Money.new(self.quantity * self.price)
    self.update!(total_cost_string: total.format)
  end

  def update_stock(size_id, quantity)
    size = Size.find_by(id: size_id)

    if quantity <= size.stock
      size.update!(stock: size.stock - quantity)
    end
    
    return 'error'
  end

  def self.create_order_item(cart_item, order_id)

  order_item = OrderItem.new(
    size_id: cart_item.size_id,
    product_id: cart_item.product_id,
    order_id: order_id,
    quantity: cart_item.quantity,
    price: cart_item.product.price
    )

    return !order_item.save ? 'Unable to process order item' : order_item

  end

end
