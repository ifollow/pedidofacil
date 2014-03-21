require 'test_helper'

class FuncionariosControllerTest < ActionController::TestCase
  setup do
    @funcionario = funcionarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:funcionarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create funcionario" do
    assert_difference('Funcionario.count') do
      post :create, funcionario: { celular: @funcionario.celular, cidade: @funcionario.cidade, cpf: @funcionario.cpf, endereco: @funcionario.endereco, estabelecimento_id: @funcionario.estabelecimento_id, nome: @funcionario.nome, percentual: @funcionario.percentual, rg: @funcionario.rg, salario: @funcionario.salario, telefone: @funcionario.telefone }
    end

    assert_redirected_to funcionario_path(assigns(:funcionario))
  end

  test "should show funcionario" do
    get :show, id: @funcionario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @funcionario
    assert_response :success
  end

  test "should update funcionario" do
    patch :update, id: @funcionario, funcionario: { celular: @funcionario.celular, cidade: @funcionario.cidade, cpf: @funcionario.cpf, endereco: @funcionario.endereco, estabelecimento_id: @funcionario.estabelecimento_id, nome: @funcionario.nome, percentual: @funcionario.percentual, rg: @funcionario.rg, salario: @funcionario.salario, telefone: @funcionario.telefone }
    assert_redirected_to funcionario_path(assigns(:funcionario))
  end

  test "should destroy funcionario" do
    assert_difference('Funcionario.count', -1) do
      delete :destroy, id: @funcionario
    end

    assert_redirected_to funcionarios_path
  end
end
