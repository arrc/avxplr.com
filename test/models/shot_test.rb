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

require 'test_helper'

class ShotTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
