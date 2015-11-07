class Song < ActiveRecord::Base
  # include ActiveModel::Validations


  belongs_to :artist
  belongs_to :genre

  validates :song_name, presence: true
  validates :scloud_embed, presence: true
  validates :song_comment, presence: true
  validates :song_comment, length: { maximum: 150}

  validates_format_of :scloud_embed, :with => /\A(<iframe)\Z/
end

# class LinkValidator < ActiveModel::Validator
#   def validate(record)
#     if record.scloud_embed.include? "<iframe"
#       record.errors[:base] << "Please input soundcloud embed link"
#     end
#   end
# end
