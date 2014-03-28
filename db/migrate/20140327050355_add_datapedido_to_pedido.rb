class AddDatapedidoToPedido < ActiveRecord::Migration
  def change
    add_column :pedidos, :datapedido, :date
  end
end
