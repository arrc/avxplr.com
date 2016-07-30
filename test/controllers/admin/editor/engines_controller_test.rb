require 'test_helper'

class Admin::Editor::EnginesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_editor_engines_index_url
    assert_response :success
  end

end
