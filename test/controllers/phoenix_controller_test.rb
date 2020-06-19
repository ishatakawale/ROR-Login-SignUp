require 'test_helper'

class PhoenixControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get phoenix_index_url
    assert_response :success
  end

end
