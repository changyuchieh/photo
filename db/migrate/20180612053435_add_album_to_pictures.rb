class AddAlbumToPictures < ActiveRecord::Migration[5.1]
  def change
    add_column :pictures, :album, :binary
  end
end
