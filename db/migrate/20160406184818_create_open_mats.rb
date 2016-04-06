class CreateOpenMats < ActiveRecord::Migration
  def change
    create_table :open_mats do |t|
      t.string :location
      t.string :host
      t.integer :number_people_attending

      t.timestamps
    end
  end
end
