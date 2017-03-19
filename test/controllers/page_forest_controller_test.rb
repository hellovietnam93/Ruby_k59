require 'test_helper'

class PageForestControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get page_forest_home_url
    assert_response :success
  end

  test "should get help" do
    get page_forest_help_url
    assert_response :success
  end

end
