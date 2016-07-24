# == Schema Information
#
# Table name: aircraftroles
#
#  id          :integer          not null, primary key
#  aircraft_id :integer          not null
#  role_id     :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Aircraftrole < ApplicationRecord
  belongs_to :aircraft
  belongs_to :role

  # accepts_nested_attributes_for :role
end
