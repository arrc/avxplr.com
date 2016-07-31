# == Schema Information
#
# Table name: shots
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  caption     :text(65535)
#  view_count  :integer
#  aircraft_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  is_public   :boolean          default(TRUE)
#

class Shot < ApplicationRecord
  belongs_to :user
  belongs_to :aircraft
  has_many :favorites, as: :favoritable
  has_many :comments, as: :commentable
  has_many :flags, as: :flagable
  has_many :taggings
  has_many :tags, through: :taggings

  def all_tags=(names)
    self.tags = names.split(",").map do |name|
      Tag.where(name: name.strip).first_or_create!
    end
  end

  def all_tags
    self.tags.map(&:name).join(", ")
  end

  def self.tagged_with(name)
    Tag.find_by_name!(name).shots
  end
end
