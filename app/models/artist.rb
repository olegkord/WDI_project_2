class Artist < ActiveRecord::Base
  has_and_belongs_to_many :genres
  has_many :songs
end
