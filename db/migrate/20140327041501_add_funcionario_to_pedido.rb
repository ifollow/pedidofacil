class AddFuncionarioToPedido < ActiveRecord::Migration
  def change
    add_reference :pedidos, :funcionario, index: true
  end
end
