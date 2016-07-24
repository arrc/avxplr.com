class CreateAircraftAircrafts < ActiveRecord::Migration[5.0]
  def change
    create_table :aircrafts do |t|
      t.string :model, default:"", null: false
      t.text :description
      t.integer :year
      t.integer :maiden_flight
      t.string :production_status
      t.string :national_origin
      t.timestamps null: false

    end
    add_index :aircrafts, :model
  end
end
