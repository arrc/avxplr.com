class Manufacturer < ApplicationRecord
  has_many :aircraftmanufacturers
  has_many :aircrafts,  through: :aircraftmanufacturers

  accepts_nested_attributes_for :aircrafts
end
