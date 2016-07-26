require 'test_helper'

class ShotsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get shots_new_url
    assert_response :success
  end

  test "should get show" do
    get shots_show_url
    assert_response :success
  end

  test "should get index" do
    get shots_index_url
    assert_response :success
  end

end
