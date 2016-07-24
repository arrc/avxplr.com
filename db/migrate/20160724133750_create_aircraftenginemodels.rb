class CreateAircraftenginemodels < ActiveRecord::Migration[5.0]
  def change
    create_table :aircraftenginemodels do |t|

      t.integer :aircraft_id, null: false
      t.integer :engine_model_id, null: false
    end

    add_index :aircraftenginemodels, :aircraft_id
    add_index :aircraftenginemodels, :engine_model_id
  end
end
