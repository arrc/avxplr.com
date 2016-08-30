class AddColumnsOnAircraft < ActiveRecord::Migration[5.0]
  def change
    add_column :aircrafts, :price, :float
    add_column :aircrafts, :endurance, :float
    add_column :aircrafts, :engine_count, :integer
    add_column :aircrafts, :max_fuel_capacity, :float

  end
end
