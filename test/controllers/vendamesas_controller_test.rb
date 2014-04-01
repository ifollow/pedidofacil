require 'test_helper'

class VendamesasControllerTest < ActionController::TestCase
  setup do
    @vendamesa = vendamesas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vendamesas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vendamesa" do
    assert_difference('Vendamesa.count') do
      post :create, vendamesa: { cartao: @vendamesa.cartao, cheque: @vendamesa.cheque, dinheiro: @vendamesa.dinheiro, estabelecimento_id: @vendamesa.estabelecimento_id, funcionario_id: @vendamesa.funcionario_id, mesa_id: @vendamesa.mesa_id, nota: @vendamesa.nota, total: @vendamesa.total }
    end

    assert_redirected_to vendamesa_path(assigns(:vendamesa))
  end

  test "should show vendamesa" do
    get :show, id: @vendamesa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vendamesa
    assert_response :success
  end

  test "should update vendamesa" do
    patch :update, id: @vendamesa, vendamesa: { cartao: @vendamesa.cartao, cheque: @vendamesa.cheque, dinheiro: @vendamesa.dinheiro, estabelecimento_id: @vendamesa.estabelecimento_id, funcionario_id: @vendamesa.funcionario_id, mesa_id: @vendamesa.mesa_id, nota: @vendamesa.nota, total: @vendamesa.total }
    assert_redirected_to vendamesa_path(assigns(:vendamesa))
  end

  test "should destroy vendamesa" do
    assert_difference('Vendamesa.count', -1) do
      delete :destroy, id: @vendamesa
    end

    assert_redirected_to vendamesas_path
  end
end
