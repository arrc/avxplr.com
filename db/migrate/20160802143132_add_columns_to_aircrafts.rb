class AddColumnsToAircrafts < ActiveRecord::Migration[5.0]
  def change
    remove_column :aircrafts, :production_status
    remove_column :aircrafts, :national_origin

    add_column :aircrafts, :production_status_cd, :integer
    add_column :aircrafts, :national_origin_cd, :integer
    # Interior
    add_column :aircrafts, :crew, :integer
    add_column :aircrafts, :passengers, :integer
    add_column :aircrafts, :bootspace, :float

    # Dimensions
    add_column :aircrafts, :length, :float
    add_column :aircrafts, :height, :float
    add_column :aircrafts, :wing_span, :float
    add_column :aircrafts, :wind_area, :float

    # Weight
    add_column :aircrafts, :empty_weight, :float
    add_column :aircrafts, :gross_weight, :float
    add_column :aircrafts, :max_takeoff_weight, :float
    add_column :aircrafts, :max_landing_weight, :float
    add_column :aircrafts, :max_payload, :float
    add_column :aircrafts, :full_fuel_payload, :float

    # Powerplant
    add_column :aircrafts, :power_output, :float
    add_column :aircrafts, :thrust, :float

    # Performance
    add_column :aircrafts, :max_cruise_speed, :float
    add_column :aircrafts, :stall_speed, :float
    add_column :aircrafts, :range, :float
    add_column :aircrafts, :service_ceiling, :float
    add_column :aircrafts, :max_climb_rate, :float
    add_column :aircrafts, :max_speed_limit, :float
    add_column :aircrafts, :takeoff_distance, :float
    add_column :aircrafts, :takeoff_ground_roll, :float
    add_column :aircrafts, :landing_distance, :float
    add_column :aircrafts, :landing_ground_roll, :float

    # Images
    add_column :aircrafts, :image_front, :string
    add_column :aircrafts, :image_back, :string
    add_column :aircrafts, :image_left, :string
    add_column :aircrafts, :image_right, :string
    add_column :aircrafts, :image_top, :string
    add_column :aircrafts, :image_takeoff, :string
    add_column :aircrafts, :image_airborne, :string
    add_column :aircrafts, :image_landing, :string
  end
end
