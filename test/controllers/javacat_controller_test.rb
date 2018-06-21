require 'test_helper'

class JavacatControllerTest < ActionDispatch::IntegrationTest
  test "should get start" do
    get javacat_start_url
    assert_response :success
  end

end
