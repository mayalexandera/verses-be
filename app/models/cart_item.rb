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
  validates :cart_id, :size_id, presence: true
  after_create :create_size_string

  belongs_to :product
  belongs_to :cart
  belongs_to :size

  def decrement
    self.update!(quantity: quantity-1)
  end

  def increment
    self.update!(quantity: quantity+1)
  end

  def create_size_string 
    self.update!(size_string: Size.find(self.size_id).size)
  end
end
