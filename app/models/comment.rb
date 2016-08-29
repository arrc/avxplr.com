# == Schema Information
#
# Table name: comments
#
#  id               :integer          not null, primary key
#  body             :text
#  user_id          :integer
#  commentable_type :string
#  commentable_id   :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Comment < ApplicationRecord
  belongs_to :user, inverse_of: :comments
  belongs_to :commentable, polymorphic: true
  has_many :flags, as: :flagable, dependent: :destroy

  validates :body, presence: { message: "comment can't be blank. please enter something before posting." }
end
