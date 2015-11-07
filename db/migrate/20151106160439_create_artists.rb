class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :artist_name
      t.string :artist_bio
      t.string :img_url

      t.timestamps
    end
  end
end