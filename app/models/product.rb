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
#  index_products_on_brand_id_and_product_number  (brand_id,product_number) UNIQUE
#
class Product < ApplicationRecord
  validates :brand_id, :price_cents, :description, :product_number, presence: true
  monetize :price_cents, allow_nil: true
  after_create :unique_sizes, :create_price_string

  belongs_to :brand
  has_many :sizes

  def unique_sizes
    sizes = self.sizes.map{ |s| s.size }.uniq()
    sizestring = ""
    sizes.map{|s| sizestring.concat(s+ ",")}
    self.update!(size_range: sizestring[0...-1])
  end

  def create_image_array
  images = ""
  self.images.split(",").each{ |img| images.push(img)}
  return images
  end

  def create_price_string
    self.update!(price_string: self.price.format)
  end
end
