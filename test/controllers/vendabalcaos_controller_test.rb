require 'test_helper'

class VendabalcaosControllerTest < ActionController::TestCase
  setup do
    @vendabalcao = vendabalcaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vendabalcaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vendabalcao" do
    assert_difference('Vendabalcao.count') do
      post :create, vendabalcao: { cartao: @vendabalcao.cartao, cheque: @vendabalcao.cheque, dinheiro: @vendabalcao.dinheiro, estabelecimento_id: @vendabalcao.estabelecimento_id, funcionario_id: @vendabalcao.funcionario_id, nota: @vendabalcao.nota, total: @vendabalcao.total }
    end

    assert_redirected_to vendabalcao_path(assigns(:vendabalcao))
  end

  test "should show vendabalcao" do
    get :show, id: @vendabalcao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vendabalcao
    assert_response :success
  end

  test "should update vendabalcao" do
    patch :update, id: @vendabalcao, vendabalcao: { cartao: @vendabalcao.cartao, cheque: @vendabalcao.cheque, dinheiro: @vendabalcao.dinheiro, estabelecimento_id: @vendabalcao.estabelecimento_id, funcionario_id: @vendabalcao.funcionario_id, nota: @vendabalcao.nota, total: @vendabalcao.total }
    assert_redirected_to vendabalcao_path(assigns(:vendabalcao))
  end

  test "should destroy vendabalcao" do
    assert_difference('Vendabalcao.count', -1) do
      delete :destroy, id: @vendabalcao
    end

    assert_redirected_to vendabalcaos_path
  end
end
