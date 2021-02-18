class AddUserIdToFlats < ActiveRecord::Migration[6.0]
  def change
    add_column :flats, :user_id, :integer
    add_index :flats, :user_id
  end
end
