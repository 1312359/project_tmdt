class CreateLands < ActiveRecord::Migration[5.1]
  def change
    create_table :lands do |t|
      t.string :description
      t.string :project_name
      t.string :investor
      t.string :min_price
      t.string :max_price
      t.string :bid_price
      t.string :ward
      t.string :district
      t.string :state_city
      t.string :area
      t.text :images, array: true, default: []
      t.string :address
      # t.integer :total_floor
      # t.integer :total_room

      t.timestamps
    end
  end
end