require 'test_helper'

class StraticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get stratic_pages_home_url
    assert_response :success
  end

  test "should get help" do
    get stratic_pages_help_url
    assert_response :success
  end

end
