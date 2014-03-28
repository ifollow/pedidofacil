class AddQuantidadeToPedido < ActiveRecord::Migration
  def change
    add_column :pedidos, :quantidade, :integer
  end
end
