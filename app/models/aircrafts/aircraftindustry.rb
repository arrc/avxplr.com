# == Schema Information
#
# Table name: aircraftindustries
#
#  id          :integer          not null, primary key
#  aircraft_id :integer          not null
#  industry_id :integer          not null
#

class Aircraftindustry < ApplicationRecord
  belongs_to :aircraft
  belongs_to :industry
end
