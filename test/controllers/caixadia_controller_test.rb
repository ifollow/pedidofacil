require 'test_helper'

class CaixadiaControllerTest < ActionController::TestCase
  setup do
    @caixadium = caixadia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:caixadia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create caixadium" do
    assert_difference('Caixadium.count') do
      post :create, caixadium: { cartao: @caixadium.cartao, cheque: @caixadium.cheque, datcai: @caixadium.datcai, dinheiro: @caixadium.dinheiro, estabelecimento_id: @caixadium.estabelecimento_id, hormov: @caixadium.hormov, obscai: @caixadium.obscai, pagtodiv: @caixadium.pagtodiv, prazo: @caixadium.prazo, receb: @caixadium.receb, salant: @caixadium.salant, salcaixa: @caixadium.salcaixa, salprox: @caixadium.salprox }
    end

    assert_redirected_to caixadium_path(assigns(:caixadium))
  end

  test "should show caixadium" do
    get :show, id: @caixadium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @caixadium
    assert_response :success
  end

  test "should update caixadium" do
    patch :update, id: @caixadium, caixadium: { cartao: @caixadium.cartao, cheque: @caixadium.cheque, datcai: @caixadium.datcai, dinheiro: @caixadium.dinheiro, estabelecimento_id: @caixadium.estabelecimento_id, hormov: @caixadium.hormov, obscai: @caixadium.obscai, pagtodiv: @caixadium.pagtodiv, prazo: @caixadium.prazo, receb: @caixadium.receb, salant: @caixadium.salant, salcaixa: @caixadium.salcaixa, salprox: @caixadium.salprox }
    assert_redirected_to caixadium_path(assigns(:caixadium))
  end

  test "should destroy caixadium" do
    assert_difference('Caixadium.count', -1) do
      delete :destroy, id: @caixadium
    end

    assert_redirected_to caixadia_path
  end
end
