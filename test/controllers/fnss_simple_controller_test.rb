require 'test_helper'

class FnssSimpleControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

end
