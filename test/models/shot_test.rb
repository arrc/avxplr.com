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

require 'test_helper'

class ShotTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
