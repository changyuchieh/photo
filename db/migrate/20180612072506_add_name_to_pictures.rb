class AddNameToPictures < ActiveRecord::Migration[5.1]
  def change
    add_column :pictures, :name, :string
    add_column :pictures, :filename, :string
    add_column :pictures, :mime_type, :string
  end
end
