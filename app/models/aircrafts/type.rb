# == Schema Information
#
# Table name: types
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Type < ApplicationRecord
  belongs_to :category
  has_many :aircrafttypes
  has_many :aircrafts,  through: :aircrafttypes

  accepts_nested_attributes_for :aircrafts
end
