require 'test_helper'

class Admin::ToiletsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_toilets_new_url
    assert_response :success
  end

  test "should get show" do
    get admin_toilets_show_url
    assert_response :success
  end

end
