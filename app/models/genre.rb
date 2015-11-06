class Genre < ActiveRecord::Base
  belongs_to :user

  has_and_belongs_to_many :artists

  has_many :songs

  validates :genre_name, presence: true
  validates :genre_description, presence: true
  validates :img_url, presence: true

end
