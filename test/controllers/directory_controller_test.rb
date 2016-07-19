require 'test_helper'

class DirectoryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get directory_index_url
    assert_response :success
  end

  test "should get show" do
    get directory_show_url
    assert_response :success
  end

end
