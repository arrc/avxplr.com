class CreateAircraftenginetypes < ActiveRecord::Migration[5.0]
  def change
    create_table :aircraftenginetypes do |t|

      t.integer :aircraft_id, null: false
      t.integer :engine_type_id, null: false
    end

    add_index :aircraftenginetypes, :aircraft_id
    add_index :aircraftenginetypes, :engine_type_id
  end
end
