require 'test_helper'

class ContaControllerTest < ActionController::TestCase
  test "should get imprimir" do
    get :imprimir
    assert_response :success
  end

end
