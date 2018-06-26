require 'test_helper'

class JlsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jl = jls(:one)
  end

  test "should get index" do
    get jls_url
    assert_response :success
  end

  test "should get new" do
    get new_jl_url
    assert_response :success
  end

  test "should create jl" do
    assert_difference('Jl.count') do
      post jls_url, params: { jl: { ans: @jl.ans, input: @jl.input, output: @jl.output, point: @jl.point, ques: @jl.ques } }
    end

    assert_redirected_to jl_url(Jl.last)
  end

  test "should show jl" do
    get jl_url(@jl)
    assert_response :success
  end

  test "should get edit" do
    get edit_jl_url(@jl)
    assert_response :success
  end

  test "should update jl" do
    patch jl_url(@jl), params: { jl: { ans: @jl.ans, input: @jl.input, output: @jl.output, point: @jl.point, ques: @jl.ques } }
    assert_redirected_to jl_url(@jl)
  end

  test "should destroy jl" do
    assert_difference('Jl.count', -1) do
      delete jl_url(@jl)
    end

    assert_redirected_to jls_url
  end
end
