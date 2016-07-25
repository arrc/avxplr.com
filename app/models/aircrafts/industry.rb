class Industry < ApplicationRecord
  has_many :aircraftindustries
  has_many :aircrafts,  through: :aircraftindustries

  accepts_nested_attributes_for :aircrafts
end
