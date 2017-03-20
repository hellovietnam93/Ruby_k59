require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get log_in" do
    get home_log_in_url
    assert_response :success
  end

end
