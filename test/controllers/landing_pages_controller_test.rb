require 'test_helper'

class LandingPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get landing_pages_index_url
    assert_response :success
  end

  test "should get about" do
    get landing_pages_about_url
    assert_response :success
  end

  test "should get contact" do
    get landing_pages_contact_url
    assert_response :success
  end

end
