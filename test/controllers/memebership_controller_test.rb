require "test_helper"

class MemebershipControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get memebership_create_url
    assert_response :success
  end
end
