require 'test_helper'

class JfsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jf = jfs(:one)
  end

  test "should get index" do
    get jfs_url
    assert_response :success
  end

  test "should get new" do
    get new_jf_url
    assert_response :success
  end

  test "should create jf" do
    assert_difference('Jf.count') do
      post jfs_url, params: { jf: { ans: @jf.ans, heading: @jf.heading, input: @jf.input, output: @jf.output, point: @jf.point, ques: @jf.ques } }
    end

    assert_redirected_to jf_url(Jf.last)
  end

  test "should show jf" do
    get jf_url(@jf)
    assert_response :success
  end

  test "should get edit" do
    get edit_jf_url(@jf)
    assert_response :success
  end

  test "should update jf" do
    patch jf_url(@jf), params: { jf: { ans: @jf.ans, heading: @jf.heading, input: @jf.input, output: @jf.output, point: @jf.point, ques: @jf.ques } }
    assert_redirected_to jf_url(@jf)
  end

  test "should destroy jf" do
    assert_difference('Jf.count', -1) do
      delete jf_url(@jf)
    end

    assert_redirected_to jfs_url
  end
end
