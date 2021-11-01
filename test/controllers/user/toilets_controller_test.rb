require 'test_helper'

class User::ToiletsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_toilets_index_url
    assert_response :success
  end

  test "should get show" do
    get user_toilets_show_url
    assert_response :success
  end

end
