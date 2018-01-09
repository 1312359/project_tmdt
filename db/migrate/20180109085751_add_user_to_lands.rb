class AddUserToLands < ActiveRecord::Migration[5.1]
  def change
    add_reference :lands, :user, index: true
  end
end
