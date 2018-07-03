require 'test_helper'

class Java::JpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @java_jp = java_jps(:one)
  end

  test "should get index" do
    get java_jps_url
    assert_response :success
  end

  test "should get new" do
    get new_java_jp_url
    assert_response :success
  end

  test "should create java_jp" do
    assert_difference('Java::Jp.count') do
      post java_jps_url, params: { java_jp: { ans: @java_jp.ans, heading: @java_jp.heading, input: @java_jp.input, output: @java_jp.output, point: @java_jp.point, ques: @java_jp.ques } }
    end

    assert_redirected_to java_jp_url(Java::Jp.last)
  end

  test "should show java_jp" do
    get java_jp_url(@java_jp)
    assert_response :success
  end

  test "should get edit" do
    get edit_java_jp_url(@java_jp)
    assert_response :success
  end

  test "should update java_jp" do
    patch java_jp_url(@java_jp), params: { java_jp: { ans: @java_jp.ans, heading: @java_jp.heading, input: @java_jp.input, output: @java_jp.output, point: @java_jp.point, ques: @java_jp.ques } }
    assert_redirected_to java_jp_url(@java_jp)
  end

  test "should destroy java_jp" do
    assert_difference('Java::Jp.count', -1) do
      delete java_jp_url(@java_jp)
    end

    assert_redirected_to java_jps_url
  end
end
