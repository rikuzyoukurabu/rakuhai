require 'test_helper'

class Admin::AreasControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get admin_areas_show_url
    assert_response :success
  end

end
