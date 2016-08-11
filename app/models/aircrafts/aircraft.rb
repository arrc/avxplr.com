# == Schema Information
#
# Table name: aircrafts
#
#  id                   :integer          not null, primary key
#  model                :string           default(""), not null
#  description          :text
#  year                 :integer
#  maiden_flight        :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  view_count           :integer
#  is_public            :boolean          default(TRUE)
#  production_status_cd :integer
#  national_origin_cd   :integer
#  crew                 :integer
#  passengers           :integer
#  bootspace            :float
#  length               :float
#  height               :float
#  wing_span            :float
#  wing_area            :float
#  empty_weight         :float
#  gross_weight         :float
#  max_takeoff_weight   :float
#  max_landing_weight   :float
#  max_payload          :float
#  full_fuel_payload    :float
#  power_output         :float
#  thrust               :float
#  max_cruise_speed     :float
#  stall_speed          :float
#  range                :float
#  service_ceiling      :float
#  max_climb_rate       :float
#  max_speed_limit      :float
#  takeoff_distance     :float
#  takeoff_ground_roll  :float
#  landing_distance     :float
#  landing_ground_roll  :float
#  image_front          :string
#  image_back           :string
#  image_left           :string
#  image_right          :string
#  image_top            :string
#  image_takeoff        :string
#  image_airborne       :string
#  image_landing        :string
#  category_id          :integer
#

class Aircraft < ApplicationRecord

  belongs_to :category

  has_many :aircraftroles#, inverse_of: :role
  has_many :roles,  through: :aircraftroles

  has_many :aircrafttypes
  has_many :types,  through: :aircrafttypes

  has_many :aircraftmanufacturers
  has_many :manufacturers,  through: :aircraftmanufacturers

  has_many :aircraftenginemanufacturers
  has_many :engine_manufacturers,  through: :aircraftenginemanufacturers

  has_many :aircraftenginemodels
  has_many :engine_models,  through: :aircraftenginemodels

  has_many :aircraftenginetypes
  has_many :engine_types,  through: :aircraftenginetypes

  has_many :aircraftindustries
  has_many :industries,  through: :aircraftindustries

  # Favorite
  has_many :favorites, as: :favoritable

  # comments
  has_many :comments, as: :commentable

  # Shots
  has_many :shots

  # accepts_nested_attributes_for :roles
  # accepts_nested_attributes_for :types
  # accepts_nested_attributes_for :manufacturers

  as_enum :production_status, { in_production: 0, in_development: 1, out_of_production: 2}
  as_enum :national_origin, {
    usa: 0,
    sweden: 1,
    russia: 2,
    austria: 3,
    canada: 4,
    uk: 5,
    india: 6
  }

  mount_uploader :image_front, AircraftUploader
  mount_uploader :image_back, AircraftUploader
  mount_uploader :image_left, AircraftUploader
  mount_uploader :image_right, AircraftUploader
  mount_uploader :image_top, AircraftUploader
  mount_uploader :image_takeoff, AircraftUploader
  mount_uploader :image_airborne, AircraftUploader
  mount_uploader :image_landing, AircraftUploader

end
