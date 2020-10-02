# == Schema Information
#
# Table name: favorites
#
#  id          :bigint           not null, primary key
#  size_string :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  member_id   :integer          not null
#  product_id  :integer          not null
#  size_id     :integer
#
class Favorite < ApplicationRecord
  validates :member_id, :product_id, :size_id, presence: true

  belongs_to :member, class_name: "User", foreign_key: "member_id"
  belongs_to :product

  after_create :create_size_string

  def create_size_string 
    self.update!(size_string: Size.find(self.size_id).size)
  end

end
