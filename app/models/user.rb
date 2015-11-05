class User < ActiveRecord::Base
  has_secure_password

  has_many :genres
  
  validates :user_name, presence: true
  validates :user_name, uniqueness: true

  validates :user_email, presence: true
  validates :user_email, uniqueness: true
end
