class AddJahrToFlats < ActiveRecord::Migration[6.0]
  def change
    add_column :flats, :Jahr, :integer
  end
end
