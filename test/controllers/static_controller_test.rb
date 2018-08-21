require 'test_helper'

class StaticControllerTest < ActionDispatch::IntegrationTest
  test "should get Home" do
    get static_Home_url
    assert_response :success
  end

  test "should get Wellness" do
    get static_Wellness_url
    assert_response :success
  end

  test "should get Sports_Performance" do
    get static_Sports_Performance_url
    assert_response :success
  end

end
