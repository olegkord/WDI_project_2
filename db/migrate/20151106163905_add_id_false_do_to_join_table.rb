class AddIdFalseDoToJoinTable < ActiveRecord::Migration
  def change
    drop_table :artists_genres

    create_table :artists_genres, id: false do |t|
      t.belongs_to :genre, index: true
      t.belongs_to :artist, index: true
    end

  end
end
