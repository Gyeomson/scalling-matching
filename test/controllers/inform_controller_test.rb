require 'test_helper'

class InformControllerTest < ActionController::TestCase
  test "should get inform" do
    get :inform
    assert_response :success
  end

end
