require 'test_helper'

class JavapracsControllerTest < ActionDispatch::IntegrationTest
  test "should get strings" do
    get javapracs_strings_url
    assert_response :success
  end

  test "should get loops" do
    get javapracs_loops_url
    assert_response :success
  end

  test "should get functions" do
    get javapracs_functions_url
    assert_response :success
  end

end
