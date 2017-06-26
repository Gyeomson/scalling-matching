require 'test_helper'

class BoardControllerTest < ActionController::TestCase
  test "should get board" do
    get :board
    assert_response :success
  end

end
