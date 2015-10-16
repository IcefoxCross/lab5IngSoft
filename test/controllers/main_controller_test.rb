require 'test_helper'

class MainControllerTest < ActionController::TestCase
  test "should get under_construction" do
    get :under_construction
    assert_response :success
  end

end
