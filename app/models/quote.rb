# == Schema Information
#
# Table name: quotes
#
#  id         :integer          not null, primary key
#  body       :text
#  author     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Quote < ApplicationRecord
  validates :body, presence: { message: "you must enter some quote to save into database." }
end
