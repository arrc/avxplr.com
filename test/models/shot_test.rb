# == Schema Information
#
# Table name: shots
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  caption      :text(65535)
#  view_count   :integer
#  aircraft_id  :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  is_public    :boolean          default(TRUE)
#  image        :string(255)
#  shot_type_cd :integer
#  video        :text(65535)
#  source       :string(255)
#

require 'test_helper'

class ShotTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
