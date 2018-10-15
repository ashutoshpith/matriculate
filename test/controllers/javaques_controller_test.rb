require 'test_helper'

class JavaquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @javaque = javaques(:one)
  end

  test "should get index" do
    get javaques_url
    assert_response :success
  end

  test "should get new" do
    get new_javaque_url
    assert_response :success
  end

  test "should create javaque" do
    assert_difference('Javaque.count') do
      post javaques_url, params: { javaque: { answer: @javaque.answer, heading: @javaque.heading, input: @javaque.input, output: @javaque.output, point: @javaque.point, question: @javaque.question } }
    end

    assert_redirected_to javaque_url(Javaque.last)
  end

  test "should show javaque" do
    get javaque_url(@javaque)
    assert_response :success
  end

  test "should get edit" do
    get edit_javaque_url(@javaque)
    assert_response :success
  end

  test "should update javaque" do
    patch javaque_url(@javaque), params: { javaque: { answer: @javaque.answer, heading: @javaque.heading, input: @javaque.input, output: @javaque.output, point: @javaque.point, question: @javaque.question } }
    assert_redirected_to javaque_url(@javaque)
  end

  test "should destroy javaque" do
    assert_difference('Javaque.count', -1) do
      delete javaque_url(@javaque)
    end

    assert_redirected_to javaques_url
  end
end
