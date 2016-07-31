# == Schema Information
#
# Table name: aircraftenginetypes
#
#  id             :integer          not null, primary key
#  aircraft_id    :integer          not null
#  engine_type_id :integer          not null
#

class Aircraftenginetype < ApplicationRecord
  belongs_to :aircraft
  belongs_to :engine_type
end
