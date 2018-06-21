require 'test_helper'

class JavaControllerTest < ActionDispatch::IntegrationTest
  test "should get read-sidepan" do
    get java_read-sidepan_url
    assert_response :success
  end

end
