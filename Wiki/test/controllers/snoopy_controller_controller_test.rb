require 'test_helper'

class SnoopyControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get snoopy_controller_index_url
    assert_response :success
  end

  test "should get characters" do
    get snoopy_controller_characters_url
    assert_response :success
  end

end
