class AddFieldsToOpenMats < ActiveRecord::Migration
  def change
    add_column :open_mats, :starts_at, :datetime
  end
end
