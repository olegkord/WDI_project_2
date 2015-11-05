class AddImgUrlToGenres < ActiveRecord::Migration
  def change
    add_column :genres, :img_url, :string
  end
end
