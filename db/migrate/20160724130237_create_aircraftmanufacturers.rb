class CreateAircraftmanufacturers < ActiveRecord::Migration[5.0]
  def change
    create_table :aircraftmanufacturers do |t|
      t.integer :aircraft_id, null: false
      t.integer :manufacturer_id, null: false
    end

    add_index :aircraftmanufacturers, :aircraft_id
    add_index :aircraftmanufacturers, :manufacturer_id
  end
end
