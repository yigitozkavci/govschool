require 'test_helper'

class DirectoryControllerTest < ActionController::TestCase
  include Devise::TestHelpers

  test "should get index" do
    sign_in users(:one)
    get :index
    assert_response :success
  end

  test "should get show" do
    sign_in users(:one)
    get :show
    assert_response :success
  end
end
