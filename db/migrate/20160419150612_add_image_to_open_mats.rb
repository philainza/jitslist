class AddImageToOpenMats < ActiveRecord::Migration
  def change
    add_column :open_mats, :image_file_name, :string
  end
end
