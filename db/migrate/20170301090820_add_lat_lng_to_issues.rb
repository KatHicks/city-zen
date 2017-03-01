class AddLatLngToIssues < ActiveRecord::Migration[5.0]
  def change
    add_column :issues, :latitude, :float
    add_column :issues, :longitude, :float
  end
end
