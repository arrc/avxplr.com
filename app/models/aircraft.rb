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

  accepts_nested_attributes_for :roles
  accepts_nested_attributes_for :types
end
