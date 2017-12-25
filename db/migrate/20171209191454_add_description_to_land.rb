class AddDescriptionToLand < ActiveRecord::Migration[5.1]
  def change
    add_column :lands, :description, :text
  end
end
