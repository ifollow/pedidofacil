class AddPedidoToVendabalcao < ActiveRecord::Migration
  def change
    add_reference :vendabalcaos, :pedido, index: true
  end
end
