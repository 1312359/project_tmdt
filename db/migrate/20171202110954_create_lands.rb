class CreateLands < ActiveRecord::Migration[5.1]
  def change
    create_table :lands do |t|
      t.string :title
      t.string :project_name
      t.string :investor
      t.string :price_per_m2
      t.string :total_value
      t.string :ward
      t.string :district
      t.string :city
      t.string :state
      t.string :area
      t.text :images, array: true, default: []
      t.string :address
      t.string :size
      t.integer :total_floor
      t.integer :total_room

      t.timestamps
    end
  end
end