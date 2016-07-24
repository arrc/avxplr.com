class CreateAircraftTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :aircraft_types do |t|
      t.integer :aircraft_id, null: false
      t.integer :type_id, null: false

      t.timestamps
    end

    add_index :aircraft_types, :aircraft_id
    add_index :aircraft_types, :type_id
  end
end
