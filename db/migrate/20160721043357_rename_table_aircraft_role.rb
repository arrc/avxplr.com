class RenameTableAircraftRole < ActiveRecord::Migration[5.0]
  def change
    rename_table :aircraft_roles, :roles
  end
end
