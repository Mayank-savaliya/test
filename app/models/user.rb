class User < ApplicationRecord
  has_secure_password
  #has_many  :articles
  has_many  :carts
  #has_many  :products, through: :carts
  before_save {self.email = email.downcase}
  validates :username, presence: true, uniqueness: true, length: {minimum: 3, maximum: 20}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length:{minimum:3,maximum: 50},uniqueness: {case_sensitive:false},format:{with: VALID_EMAIL_REGEX}

end
