# == Schema Information
#
# Table name: types
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer
#

class Type < ApplicationRecord
  belongs_to :category
  has_many :aircrafttypes
  has_many :aircrafts,  through: :aircrafttypes

  accepts_nested_attributes_for :aircrafts
end
