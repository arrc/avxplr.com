# == Schema Information
#
# Table name: aircraftenginemanufacturers
#
#  id                     :integer          not null, primary key
#  aircraft_id            :integer          not null
#  engine_manufacturer_id :integer          not null
#

class Aircraftenginemanufacturer < ApplicationRecord
  belongs_to :aircraft
  belongs_to :engine_manufacturer
end
