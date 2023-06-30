require "test_helper"

class GymControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get gym_show_url
    assert_response :success
  end

  test "should get delete" do
    get gym_delete_url
    assert_response :success
  end
end
