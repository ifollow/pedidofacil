require 'test_helper'

class FechamentoControllerTest < ActionController::TestCase
  test "should get mesa" do
    get :mesa
    assert_response :success
  end

end
