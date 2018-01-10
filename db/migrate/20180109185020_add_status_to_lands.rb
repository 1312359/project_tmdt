class AddStatusToLands < ActiveRecord::Migration[5.1]
  def change
    add_column :lands, :status, :string
  end
end
