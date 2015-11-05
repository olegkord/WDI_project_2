class Genre < ActiveRecord::Base
  belongs_to :user

  validates :genre_name, presence: true
  validates :genre_description, presence: true
  validates :img_url, presence: true

end
