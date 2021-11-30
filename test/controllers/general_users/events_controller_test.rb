require 'test_helper'

class GeneralUsers::EventsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get general_users_events_index_url
    assert_response :success
  end

  test "should get show" do
    get general_users_events_show_url
    assert_response :success
  end

end
