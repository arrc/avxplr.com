# == Schema Information
#
# Table name: aircraftenginemodels
#
#  id              :integer          not null, primary key
#  aircraft_id     :integer          not null
#  engine_model_id :integer          not null
#

class Aircraftenginemodel < ApplicationRecord
  belongs_to :aircraft
  belongs_to :engine_model
end
