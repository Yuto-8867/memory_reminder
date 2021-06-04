require 'test_helper'

class AnniversariesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get anniversaries_index_url
    assert_response :success
  end

end
