# == Schema Information
#
# Table name: tags
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tag < ApplicationRecord
  has_many :taggings
  has_many :shots,  through: :taggings

  def self.tag_counts
    self.select("name, count(taggings.tag_id) as count").joins(:taggings).group("taggings.tag_id, tags.name")
  end
end
