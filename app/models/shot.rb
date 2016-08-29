# == Schema Information
#
# Table name: shots
#
#  id               :integer          not null, primary key
#  user_id          :integer
#  caption          :text
#  view_count       :integer
#  aircraft_id      :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  is_public        :boolean          default(TRUE)
#  image            :string
#  shot_type_cd     :integer
#  video            :text
#  source           :string
#  shot_category_id :integer
#

class Shot < ApplicationRecord
  belongs_to :user
  belongs_to :aircraft
  belongs_to :shot_category
  has_many :favorites, as: :favoritable
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :flags, as: :flagable, dependent: :destroy
  has_many :taggings
  has_many :tags, through: :taggings, dependent: :destroy

  mount_uploader :image, ShotUploader

  as_enum :shot_type, {photo:0, video:1}

  validates :caption, presence: { message: "caption cannot be blank." }
  # validates :image, presence: { message: "please upload some image." }
  validates :shot_category_id, presence: { message: "select a category." }
  validate :image_or_video


  # def all_tags=(names)
  #   self.tags = names.split(",").map do |name|
  #     Tag.where(name: name.strip).first_or_create!
  #   end
  # end

  def all_tags=(names)
    names.reject!(&:empty?)
    pp "Full array", names
    self.tags = names.map do |name|
      unless name.blank?
        Tag.where(name: name.strip).first_or_create!
      end
    end
  end

  def all_tags
    self.tags.map(&:name).join(", ")
  end

  def self.tagged_with(name)
    Tag.find_by_name!(name).shots
  end

  private

  def image_or_video
    unless image.blank? ^ video.blank?
      errors.add(:base, "please upload an image or enter a youtube video link.")
    end
  end
end
