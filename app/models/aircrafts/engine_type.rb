# == Schema Information
#
# Table name: engine_types
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class EngineType < ApplicationRecord
  has_many :aircraftenginetypes
  has_many :aircrafts,  through: :aircraftenginetypes

  accepts_nested_attributes_for :aircrafts
end