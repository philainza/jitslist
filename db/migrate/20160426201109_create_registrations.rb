class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :name
      t.string :email
      t.string :gender
      t.string :belt_level
      t.integer :age
      t.string :affiliation
      t.references :open_mat, index: true

      t.timestamps
    end
  end
end
