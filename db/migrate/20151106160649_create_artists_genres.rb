class CreateArtistsGenres < ActiveRecord::Migration
  def change
    create_table :artists_genres do |t|
      t.references :genre, index: true
      t.references :artist, index: true
    end
  end
end
