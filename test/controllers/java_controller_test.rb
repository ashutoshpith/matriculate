require 'test_helper'

class JavaControllerTest < ActionDispatch::IntegrationTest
  test "should get read" do
    get java_read_url
    assert_response :success
  end

  test "should get practice" do
    get java_practice_url
    assert_response :success
  end

  test "should get challenge" do
    get java_challenge_url
    assert_response :success
  end

  test "should get progress" do
    get java_progress_url
    assert_response :success
  end

end
