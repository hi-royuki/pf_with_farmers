require 'test_helper'

class FarmerUsers::EventsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get farmer_users_events_index_url
    assert_response :success
  end

  test "should get show" do
    get farmer_users_events_show_url
    assert_response :success
  end

end
