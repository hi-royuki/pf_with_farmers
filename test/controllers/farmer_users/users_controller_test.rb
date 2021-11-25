require 'test_helper'

class FarmerUsers::UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get farmer_users_users_show_url
    assert_response :success
  end

end
