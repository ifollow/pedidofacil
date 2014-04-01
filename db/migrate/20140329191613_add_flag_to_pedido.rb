class AddFlagToPedido < ActiveRecord::Migration
  def change
    add_column :pedidos, :flag, :boolean
  end
end
