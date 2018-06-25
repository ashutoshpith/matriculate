require 'test_helper'

class JpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jp = jps(:one)
  end

  test "should get index" do
    get jps_url
    assert_response :success
  end

  test "should get new" do
    get new_jp_url
    assert_response :success
  end

  test "should create jp" do
    assert_difference('Jp.count') do
      post jps_url, params: { jp: { ans: @jp.ans, point: @jp.point, ques: @jp.ques } }
    end

    assert_redirected_to jp_url(Jp.last)
  end

  test "should show jp" do
    get jp_url(@jp)
    assert_response :success
  end

  test "should get edit" do
    get edit_jp_url(@jp)
    assert_response :success
  end

  test "should update jp" do
    patch jp_url(@jp), params: { jp: { ans: @jp.ans, point: @jp.point, ques: @jp.ques } }
    assert_redirected_to jp_url(@jp)
  end

  test "should destroy jp" do
    assert_difference('Jp.count', -1) do
      delete jp_url(@jp)
    end

    assert_redirected_to jps_url
  end
end
