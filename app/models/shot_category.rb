# == Schema Information
#
# Table name: shot_categories
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ShotCategory < ApplicationRecord
  has_many :shots
end
