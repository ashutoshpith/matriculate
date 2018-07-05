require 'test_helper'

class Java::JprogressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @java_jprogress = java_jprogresses(:one)
  end

  test "should get index" do
    get java_jprogresses_url
    assert_response :success
  end

  test "should get new" do
    get new_java_jprogress_url
    assert_response :success
  end

  test "should create java_jprogress" do
    assert_difference('Java::Jprogress.count') do
      post java_jprogresses_url, params: { java_jprogress: { ans: @java_jprogress.ans, heading: @java_jprogress.heading, point: @java_jprogress.point, ques: @java_jprogress.ques } }
    end

    assert_redirected_to java_jprogress_url(Java::Jprogress.last)
  end

  test "should show java_jprogress" do
    get java_jprogress_url(@java_jprogress)
    assert_response :success
  end

  test "should get edit" do
    get edit_java_jprogress_url(@java_jprogress)
    assert_response :success
  end

  test "should update java_jprogress" do
    patch java_jprogress_url(@java_jprogress), params: { java_jprogress: { ans: @java_jprogress.ans, heading: @java_jprogress.heading, point: @java_jprogress.point, ques: @java_jprogress.ques } }
    assert_redirected_to java_jprogress_url(@java_jprogress)
  end

  test "should destroy java_jprogress" do
    assert_difference('Java::Jprogress.count', -1) do
      delete java_jprogress_url(@java_jprogress)
    end

    assert_redirected_to java_jprogresses_url
  end
end
