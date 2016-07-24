class RenameTasksAndRolesColumns < ActiveRecord::Migration[5.0]
  def change
    rename_column :roles, :role_name, :name
    rename_column :roles, :role_description, :description
    rename_column :types, :aircraft_type, :name
  end
end
