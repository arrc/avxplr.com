# == Schema Information
#
# Table name: roles
#
#  id          :integer          not null, primary key
#  name        :string(255)      default(""), not null
#  description :text(65535)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Role < ApplicationRecord
  has_many :aircraftroles
  has_many :aircrafts,  through: :aircraftroles

  accepts_nested_attributes_for :aircrafts
end
