require 'test_helper'

class PriceControllerTest < ActionDispatch::IntegrationTest
  test "should get page" do
    get price_page_url
    assert_response :success
  end

end
