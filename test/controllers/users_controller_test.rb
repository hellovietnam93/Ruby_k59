require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get  '/signup',  to: 'users#new'
    assert_response :success
  end

end
