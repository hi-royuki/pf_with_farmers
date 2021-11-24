require 'test_helper'

class FarmerUsers::PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get farmer_users_posts_new_url
    assert_response :success
  end

  test "should get create" do
    get farmer_users_posts_create_url
    assert_response :success
  end

  test "should get index" do
    get farmer_users_posts_index_url
    assert_response :success
  end

  test "should get show" do
    get farmer_users_posts_show_url
    assert_response :success
  end

  test "should get destroy" do
    get farmer_users_posts_destroy_url
    assert_response :success
  end

end
