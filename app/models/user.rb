require 'bcrypt'
# == Schema Information
#
# Table name: users
#
#  id                 :bigint           not null, primary key
#  email              :string
#  name               :string
#  password_digest    :string
#  session_token      :string
#  subscribed         :boolean          default(FALSE)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  plan_membership_id :integer
#
# Indexes
#
#  index_users_on_email          (email) UNIQUE
#  index_users_on_session_token  (session_token) UNIQUE
#
class User < ApplicationRecord
  attr_reader :password

  validates :email, presence: true, uniqueness: true
   validates :password_digest, :session_token, presence: true
  validates :password, length: { minimum: 6 }, allow_nil: true
  validates :name, presence: true

  after_initialize :ensure_session_token

  has_many :favorites, class_name: 'Favorite', foreign_key: 'member_id'
  has_one :plan_membership, class_name: 'PlanMembership', foreign_key: 'member_id'
  has_many :orders, class_name: "Order", foreign_key: "member_id"
  has_one :cart, class_name: "Cart", foreign_key: "member_id"


  def self.find_by_credentials(email, password)
    user = User.find_by(email: email)
    return nil unless user
    user.is_password?(password) ? user : nil
  end

  def password=(password)
    password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def ensure_session_token
    self.session_token ||= SecureRandom.urlsafe_base64
  end

  def reset_session_token!
    self.session_token = SecureRandom.urlsafe_base64
    self.save
    self.session_token
  end

  def first_name
    self.name.split.first
  end

  def last_name
    self.name.split.last
  end
  
end
