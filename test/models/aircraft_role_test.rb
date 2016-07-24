# == Schema Information
#
# Table name: aircraft_roles
#
#  id          :integer          not null, primary key
#  aircraft_id :integer          not null
#  role_id     :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class AircraftRoleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
