class CreateAircraftindustries < ActiveRecord::Migration[5.0]
  def change
    create_table :aircraftindustries do |t|

      t.integer :aircraft_id, null: false
      t.integer :industry_id, null: false
    end

    add_index :aircraftindustries, :aircraft_id
    add_index :aircraftindustries, :industry_id
  end
end
