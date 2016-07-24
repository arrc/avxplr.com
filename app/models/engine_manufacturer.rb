class EngineManufacturer < ApplicationRecord
  has_many :aircraftenginemanufacturers
  has_many :aircrafts,  through: :aircraftenginemanufacturers

  accepts_nested_attributes_for :aircrafts
end
