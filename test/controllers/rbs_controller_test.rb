require 'test_helper'

class RbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rb = rbs(:one)
  end

  test "should get index" do
    get rbs_url
    assert_response :success
  end

  test "should get new" do
    get new_rb_url
    assert_response :success
  end

  test "should create rb" do
    assert_difference('Rb.count') do
      post rbs_url, params: { rb: { mb: @rb.mb, ms: @rb.ms } }
    end

    assert_redirected_to rb_url(Rb.last)
  end

  test "should show rb" do
    get rb_url(@rb)
    assert_response :success
  end

  test "should get edit" do
    get edit_rb_url(@rb)
    assert_response :success
  end

  test "should update rb" do
    patch rb_url(@rb), params: { rb: { mb: @rb.mb, ms: @rb.ms } }
    assert_redirected_to rb_url(@rb)
  end

  test "should destroy rb" do
    assert_difference('Rb.count', -1) do
      delete rb_url(@rb)
    end

    assert_redirected_to rbs_url
  end
end
