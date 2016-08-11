# == Schema Information
#
# Table name: engine_models
#
#  id                     :integer          not null, primary key
#  name                   :string
#  description            :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  year                   :integer
#  engine_manufacturer_id :integer
#

require 'test_helper'

class EngineModelTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
