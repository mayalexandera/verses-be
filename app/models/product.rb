# == Schema Information
#
# Table name: products
#
#  id             :bigint           not null, primary key
#  description    :text             not null
#  details        :string
#  discount       :float
#  fit_details    :string
#  images         :text
#  name           :string           not null
#  price_cents    :integer          default(0), not null
#  price_currency :string           default("USD"), not null
#  price_string   :string
#  product_number :integer          not null
#  product_type   :string           not null
#  size_range     :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  brand_id       :integer          not null
#
# Indexes
#
#  index_products_on_brand_id_and_product_number_and_images  (brand_id,product_number,images) UNIQUE
#
class Product < ApplicationRecord
  validates :brand_id, :price_cents, :description, :product_number, presence: true
  monetize :price_cents, allow_nil: true
  after_create :create_size_range_string, :create_price_string

  belongs_to :brand
  has_many :sizes

  def self.filter_selection(type, value)
    if type === "brand"
      products = Product.where(brand_id: value)
    elsif type === "category"
      products = Product.where(product_type: value)
    elsif type === "size"
      sizes = Size.where(size: value)
      sizes.map{ |s| s.stock > 0 }
      products = sizes.map{ |s| s.product }.uniq()
    else
      products = Product.all
    end

    return products
  end

  def create_size_range_string
    sizes = self.sizes.map{ |s| s.size }.uniq()
    sizestring = ""
    sizes.map{|s| sizestring.concat(s+ ",")}
    self.update!(size_range: sizestring[0...-1])
  end

  def create_price_string
    self.update!(price_string: self.price.format)
  end
end