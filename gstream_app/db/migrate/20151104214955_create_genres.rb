class CreateGenres < ActiveRecord::Migration
  def change
    create_table :genres do |t|

      t.string :genre_name
      t.string :genre_description

      t.references :user, index: true, foreign_keys: true

      t.timestamps
    end
  end
end
