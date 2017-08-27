require 'test_helper'

class LinksControllerTest < ActionDispatch::IntegrationTest
  test "should get Feed" do
    get links_Feed_url
    assert_response :success
  end

  test "should get create" do
    get links_create_url
    assert_response :success
  end

end
