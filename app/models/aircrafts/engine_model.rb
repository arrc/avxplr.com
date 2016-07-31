# == Schema Information
#
# Table name: engine_models
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class EngineModel < ApplicationRecord
  has_many :aircraftenginemodels
  has_many :aircrafts,  through: :aircraftenginemodels

  accepts_nested_attributes_for :aircrafts
end
