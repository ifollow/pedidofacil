require 'test_helper'

class CaixaanosControllerTest < ActionController::TestCase
  setup do
    @caixaano = caixaanos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:caixaanos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create caixaano" do
    assert_difference('Caixaano.count') do
      post :create, caixaano: { cartao: @caixaano.cartao, cheque: @caixaano.cheque, datcai: @caixaano.datcai, dinheiro: @caixaano.dinheiro, estabelecimento_id: @caixaano.estabelecimento_id, hormov: @caixaano.hormov, obscai: @caixaano.obscai, pagtodiv: @caixaano.pagtodiv, prazo: @caixaano.prazo, receb: @caixaano.receb, salant: @caixaano.salant, salcaixa: @caixaano.salcaixa, salprox: @caixaano.salprox }
    end

    assert_redirected_to caixaano_path(assigns(:caixaano))
  end

  test "should show caixaano" do
    get :show, id: @caixaano
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @caixaano
    assert_response :success
  end

  test "should update caixaano" do
    patch :update, id: @caixaano, caixaano: { cartao: @caixaano.cartao, cheque: @caixaano.cheque, datcai: @caixaano.datcai, dinheiro: @caixaano.dinheiro, estabelecimento_id: @caixaano.estabelecimento_id, hormov: @caixaano.hormov, obscai: @caixaano.obscai, pagtodiv: @caixaano.pagtodiv, prazo: @caixaano.prazo, receb: @caixaano.receb, salant: @caixaano.salant, salcaixa: @caixaano.salcaixa, salprox: @caixaano.salprox }
    assert_redirected_to caixaano_path(assigns(:caixaano))
  end

  test "should destroy caixaano" do
    assert_difference('Caixaano.count', -1) do
      delete :destroy, id: @caixaano
    end

    assert_redirected_to caixaanos_path
  end
end
