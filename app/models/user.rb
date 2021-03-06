class User < ActiveRecord::Base
  has_secure_password

  has_many :genres
  has_many :songs

  validates :user_name, presence: true
  validates :user_name, uniqueness: true

  validates :email, presence: true
  validates :email, uniqueness: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
end
