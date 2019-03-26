require 'test_helper'

class BinControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bin_index_url
    assert_response :success
  end

  test "should get show" do
    get bin_show_url
    assert_response :success
  end

end
