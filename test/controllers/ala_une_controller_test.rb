require 'test_helper'

class AlaUneControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get ala_une_show_url
    assert_response :success
  end

end
