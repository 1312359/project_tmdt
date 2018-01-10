class AddWillwinToLands < ActiveRecord::Migration[5.1]
  def change
    add_column :lands, :willwin, :integer
    add_foreign_key :lands, :users, :column => :willwin, index: true
  end
end
