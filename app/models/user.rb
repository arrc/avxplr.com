# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  username               :string           default(""), not null
#  bio                    :string
#  profile_image          :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  is_active              :boolean          default(TRUE)
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :favorites, inverse_of: :user
  has_many :comments, inverse_of: :user
  has_many :shots, inverse_of: :user
  # has_many :aircrafts, through: :favorites, source: :favoritable, source_type: 'Favorite'

  mount_uploader :profile_image, ProfileImageUploader

  scope :favorite_aircrafts, -> { where(favoritable_type: 'Aircraft') }
end
