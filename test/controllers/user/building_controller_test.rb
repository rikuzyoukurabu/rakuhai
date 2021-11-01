require 'test_helper'

class User::BuildingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_building_index_url
    assert_response :success
  end

  test "should get show" do
    get user_building_show_url
    assert_response :success
  end

end
