# == Schema Information
#
# Table name: engine_models
#
#  id                     :integer          not null, primary key
#  name                   :string
#  description            :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  year                   :integer
#  engine_manufacturer_id :integer
#

class EngineModel < ApplicationRecord
  has_many :aircraftenginemodels
  has_many :aircrafts,  through: :aircraftenginemodels
  belongs_to :engine_manufacturer

  accepts_nested_attributes_for :aircrafts
end
