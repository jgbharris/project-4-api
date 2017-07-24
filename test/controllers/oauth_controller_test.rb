require 'test_helper'

class OauthControllerTest < ActionDispatch::IntegrationTest
  test "should get facebook" do
    get oauth_facebook_url
    assert_response :success
  end

end
