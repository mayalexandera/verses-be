# == Schema Information
#
# Table name: sizes
#
#  id             :bigint           not null, primary key
#  colorway       :string
#  product_number :integer
#  size           :string
#  stock          :integer
#  brand_id       :integer
#  product_id     :integer
#
# Indexes
#
#  index_sizes_on_brand_id_and_product_id_and_size_and_colorway  (brand_id,product_id,size,colorway) UNIQUE
#
class Size < ApplicationRecord
  validates :product_number, :size, :colorway, :brand_id, :product_id, presence: true
  validates :stock, presence: true, numericality: true,
            exclusion: { in: [0], message: "This item is out of stock." }

  has_many :order_items
  belongs_to :product

  def update_stock(quantity)
   self.update!(stock: stock-quantity)
  end
end
