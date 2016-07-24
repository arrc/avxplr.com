class CreateAircraftAircraftRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :aircraft_roles do |t|
      t.string :role_name, default:"", null: false
      t.text :role_description
      t.timestamps
    end
    add_index :aircraft_roles, :role_name
  end
end
