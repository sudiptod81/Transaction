require 'test_helper'

class SearchControllerTest < ActionController::TestCase
  test "should get date" do
    get :date
    assert_response :success
  end

  test "should get vendor" do
    get :vendor
    assert_response :success
  end

end
