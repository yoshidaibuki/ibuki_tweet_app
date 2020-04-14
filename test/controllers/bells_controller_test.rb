require 'test_helper'

class BellsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bells_index_url
    assert_response :success
  end

end
