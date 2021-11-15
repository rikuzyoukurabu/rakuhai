require 'test_helper'

class User::NewsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_news_index_url
    assert_response :success
  end

end
