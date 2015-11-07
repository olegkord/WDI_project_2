class Artist < ActiveRecord::Base
  has_and_belongs_to_many :genres
  has_many :songs

  validates :artist_name, presence: true
  validates :artist_bio, presence: true
  validates :img_url, presence: true
end
