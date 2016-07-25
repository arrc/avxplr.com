class EngineType < ApplicationRecord
  has_many :aircraftenginetypes
  has_many :aircrafts,  through: :aircraftenginetypes

  accepts_nested_attributes_for :aircrafts
end
