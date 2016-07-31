# == Schema Information
#
# Table name: engine_manufacturers
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class EngineManufacturer < ApplicationRecord
  has_many :aircraftenginemanufacturers
  has_many :aircrafts,  through: :aircraftenginemanufacturers

  accepts_nested_attributes_for :aircrafts
end
