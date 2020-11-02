# == Schema Information
#
# Table name: cart_items
#
#  id          :bigint           not null, primary key
#  quantity    :integer          default(1), not null
#  size_string :string
#  cart_id     :integer
#  product_id  :integer
#  size_id     :integer
#
class CartItem < ApplicationRecord
  validates :cart_id, :size_id, :size_string, presence: true

  belongs_to :product
  belongs_to :cart
  belongs_to :size

  # before_save :create_size_string

  def decrement
    self.update!(quantity: quantity-1)
  end

  def price
    total = Money.new(self.product.price * self.quantity)
    total
  end

  def update_cart_item(cart, type, value, product_id=nil)
    if type === 'size'
      size = Size.find_by(size: value, product_id: product_id)
      self.update!(size: size)
      self.update!(size_string: size.size)
    end
    self.update!(quantity: value) if type === 'quantity'
    cart.create_price_string
  end

  def increment
    # self.create_size_string
    self.update!(quantity: quantity+1)
  end

  def create_size_string
    self.update!(size_string: size.size)
  end
end