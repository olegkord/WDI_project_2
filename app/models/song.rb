class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  validates :song_name, presence: true
  validates :scloud_embed, presence: true
  validates :sound_comment, presence: true
  validates :sound_comment, length: { maximum: 150}
end
