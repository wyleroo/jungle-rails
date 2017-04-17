class User < ActiveRecord::Base
  has_secure_password
  validates :name, presence: true
  validates :password, presence: true
  validates :password, length: { minimum: 3 }
end
