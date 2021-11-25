require 'test_helper'

class GeneralUsers::UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get general_users_users_show_url
    assert_response :success
  end

end
