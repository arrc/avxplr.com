class Favorite < ApplicationRecord
  belongs_to :favoritable, polymorphic: true
  belongs_to :user, inverse_of: :favorites

  validates :user_id, uniqueness: {
    scope: [:favoritable_id, :favoritable_type],
    message: 'can only favorite an item once'
  }

  scope :aircrafts, ->(user_id) { where(user_id: user_id ,favoritable_type: 'Aircraft') }
  # scope :consumable, lambda { where('expiration_date > ?', Date.today) }
  # scope :cheaper_than, lambda { |user_id, aircraft_id| where('user_id < ? and favoritable_id < ?', user_id,favoritable_id) }
  scope :cheaper_than, ->(user_id, aircraft_id) { where(user_id: user_id,favoritable_id: aircraft_id) }

end
