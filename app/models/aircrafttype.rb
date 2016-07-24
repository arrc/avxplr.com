# == Schema Information
#
# Table name: aircrafttypes
#
#  id          :integer          not null, primary key
#  aircraft_id :integer          not null
#  type_id     :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Aircrafttype < ApplicationRecord
  belongs_to :aircraft
  belongs_to :type

  # accepts_nested_attributes_for :type
end
