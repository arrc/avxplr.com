class EngineModel < ApplicationRecord
  has_many :aircraftenginemodels
  has_many :aircrafts,  through: :aircraftenginemodels

  accepts_nested_attributes_for :aircrafts
end
