require 'test_helper'

class Admin::Editor::SubAttributesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_editor_sub_attributes_index_url
    assert_response :success
  end

end
