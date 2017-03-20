require 'test_helper'

class PageForesthomeControllerTest < ActionDispatch::IntegrationTest
  test "should get log_in" do
    get page_foresthome_log_in_url
    assert_response :success
  end

  test "should get sign_in" do
    get page_foresthome_sign_in_url
    assert_response :success
  end

end
