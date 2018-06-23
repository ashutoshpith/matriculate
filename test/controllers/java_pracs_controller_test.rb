require 'test_helper'

class JavaPracsControllerTest < ActionDispatch::IntegrationTest
  test "should get string" do
    get java_pracs_string_url
    assert_response :success
  end

  test "should get loop" do
    get java_pracs_loop_url
    assert_response :success
  end

  test "should get function" do
    get java_pracs_function_url
    assert_response :success
  end

end
