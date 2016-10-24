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

  test "unauthenticated users should be redirected from index" do
    get :index
    assert_redirected_to controller: "users/sessions", action: "new"
  end

  test "unauthenticated users should be redirected from show" do
    get :show
    assert_redirected_to controller: "users/sessions", action: "new"
  end
end
