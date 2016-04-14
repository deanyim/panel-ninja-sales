require 'test_helper'

class ProspectsControllerTest < ActionController::TestCase
  test "should get meow" do
    get :meow
    assert_response :success
  end

end
