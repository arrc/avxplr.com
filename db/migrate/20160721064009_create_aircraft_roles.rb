class CreateAircraftRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :aircraft_roles do |t|
      t.integer :aircraft_id, null: false
      t.integer :role_id, null: false
      t.timestamps
    end

    add_index :aircraft_roles, :aircraft_id
    add_index :aircraft_roles, :role_id
  end
end
