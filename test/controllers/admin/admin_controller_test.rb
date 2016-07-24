require 'test_helper'

class Admin::AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get dashboard" do
    get admin_admin_dashboard_url
    assert_response :success
  end

end
