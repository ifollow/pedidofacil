class AddEstabelecimentoToPedido < ActiveRecord::Migration
  def change
    add_reference :pedidos, :estabelecimento, index: true
  end
end
