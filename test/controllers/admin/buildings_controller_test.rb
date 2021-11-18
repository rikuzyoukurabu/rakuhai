require 'test_helper'

class Admin::BuildingsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_buildings_new_url
    assert_response :success
  end

  test "should get show" do
    get admin_buildings_show_url
    assert_response :success
  end

end
