# User has secure password
# Checks that the email is valid

class User < ApplicationRecord
  has_secure_password
  validates :email, :presence => true, :uniqueness => true
  has_many :genres
  has_many :links
  # :through 
  # => :genres
end
