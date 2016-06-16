require 'test_helper'

class StaticControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get static_about_url
    assert_response :success
  end

  test "should get index" do
    get static_index_url
    assert_response :success
  end

  test "should get characters" do
    get static_characters_url
    assert_response :success
  end

end
