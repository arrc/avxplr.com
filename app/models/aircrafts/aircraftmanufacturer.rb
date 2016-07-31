# == Schema Information
#
# Table name: aircraftmanufacturers
#
#  id              :integer          not null, primary key
#  aircraft_id     :integer          not null
#  manufacturer_id :integer          not null
#

class Aircraftmanufacturer < ApplicationRecord
  belongs_to :aircraft
  belongs_to :manufacturer
end
