class User < ApplicationRecord
  has_many :journals
  validates :username
  has_secure_password
end
