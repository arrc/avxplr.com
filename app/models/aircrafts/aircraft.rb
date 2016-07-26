# == Schema Information
#
# Table name: aircrafts
#
#  id                :integer          not null, primary key
#  model             :string(255)      default(""), not null
#  description       :text(65535)
#  year              :integer
#  maiden_flight     :integer
#  production_status :string(255)
#  national_origin   :string(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Aircraft < ApplicationRecord
  has_many :aircraftroles#, inverse_of: :role
  has_many :roles,  through: :aircraftroles

  has_many :aircrafttypes
  has_many :types,  through: :aircrafttypes

  has_many :aircraftmanufacturers
  has_many :manufacturers,  through: :aircraftmanufacturers

  has_many :aircraftenginemanufacturers
  has_many :engine_manufacturers,  through: :aircraftenginemanufacturers

  has_many :aircraftenginemodels
  has_many :engine_models,  through: :aircraftenginemodels

  has_many :aircraftenginetypes
  has_many :engine_types,  through: :aircraftenginetypes

  has_many :aircraftindustries
  has_many :industries,  through: :aircraftindustries

  # Favorite
  has_many :favorites, as: :favoritable

  # comments
  has_many :comments, as: :commentable

  # Shots
  has_many :shots

  # accepts_nested_attributes_for :roles
  # accepts_nested_attributes_for :types
  # accepts_nested_attributes_for :manufacturers


end
