require 'test_helper'

class TweetControllerTest < ActionController::TestCase
  test "should get user_page" do
    get :user_page
    assert_response :success
  end

end
