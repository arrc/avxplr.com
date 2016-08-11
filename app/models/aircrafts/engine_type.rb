# == Schema Information
#
# Table name: engine_types
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class EngineType < ApplicationRecord
  has_many :aircraftenginetypes
  has_many :aircrafts,  through: :aircraftenginetypes
  has_many :engine_models
  has_many :engine_manufacturers

  accepts_nested_attributes_for :aircrafts
end
