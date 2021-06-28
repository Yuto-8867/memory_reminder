require 'test_helper'

class SharingsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get sharings_new_url
    assert_response :success
  end

  test "should get edit" do
    get sharings_edit_url
    assert_response :success
  end
end
