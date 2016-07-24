class RenameAircraftTypesTable < ActiveRecord::Migration[5.0]
  def change
    rename_table :aircraft_roles, :aircraftroles
    rename_table :aircraft_types, :aircrafttypes
  end
end
