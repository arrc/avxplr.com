class CreateAircraftenginemanufacturers < ActiveRecord::Migration[5.0]
  def change
    create_table :aircraftenginemanufacturers do |t|

      t.integer :aircraft_id, null: false
      t.integer :engine_manufacturer_id, null: false
    end

    add_index :aircraftenginemanufacturers, :aircraft_id
    add_index :aircraftenginemanufacturers, :engine_manufacturer_id
  end
end
