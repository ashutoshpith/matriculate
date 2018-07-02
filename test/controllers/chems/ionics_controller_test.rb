require 'test_helper'

class Chems::IonicsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get chems_ionics_index_url
    assert_response :success
  end

end
