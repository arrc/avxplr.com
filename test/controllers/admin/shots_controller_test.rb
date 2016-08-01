require 'test_helper'

class Admin::ShotsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_shots_index_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_shots_destroy_url
    assert_response :success
  end

end
