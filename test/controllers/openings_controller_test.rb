require 'test_helper'

class OpeningsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get openings_index_url
    assert_response :success
  end

  test "should get show" do
    get openings_show_url
    assert_response :success
  end

  test "should get new" do
    get openings_new_url
    assert_response :success
  end

  test "should get create" do
    get openings_create_url
    assert_response :success
  end

  test "should get edit" do
    get openings_edit_url
    assert_response :success
  end

  test "should get update" do
    get openings_update_url
    assert_response :success
  end

  test "should get delete" do
    get openings_delete_url
    assert_response :success
  end

end
