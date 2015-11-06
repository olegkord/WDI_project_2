class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :song_name
      t.string :song_comment
      t.string :scloud_embed

      t.references :genre, index: true
      t.references :artist, index: true
    end
  end
end
