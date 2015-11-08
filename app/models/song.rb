class Song < ActiveRecord::Base

  belongs_to :artist
  belongs_to :genre
  belongs_to :user

  validates :song_name, presence: true
  validates :scloud_embed, presence: true
  validates :song_comment, presence: true
  validates :song_comment, length: { maximum: 150}

  validates_format_of :scloud_embed, :with => /\A(<iframe)/
end
