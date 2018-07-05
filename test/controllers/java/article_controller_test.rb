require 'test_helper'

class Java::ArticleControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get java_article_index_url
    assert_response :success
  end

end
