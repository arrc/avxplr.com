# == Schema Information
#
# Table name: manufacturers
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Manufacturer < ApplicationRecord
  has_many :aircraftmanufacturers
  has_many :aircrafts,  through: :aircraftmanufacturers

  accepts_nested_attributes_for :aircrafts
end
