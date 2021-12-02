require 'test_helper'

class FarmerUsers::JoinsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get farmer_users_joins_new_url
    assert_response :success
  end

  test "should get complete" do
    get farmer_users_joins_complete_url
    assert_response :success
  end

  test "should get index" do
    get farmer_users_joins_index_url
    assert_response :success
  end

  test "should get show" do
    get farmer_users_joins_show_url
    assert_response :success
  end

end
