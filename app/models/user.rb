class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 15 }
  validates :email, presence: true, format: { with:/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
  validates :password, length: { minimum: 8, maximum: 32 }, format: { with: /\A[a-zA-Z0-9]+\Z/ }
  
  has_secure_password
end


