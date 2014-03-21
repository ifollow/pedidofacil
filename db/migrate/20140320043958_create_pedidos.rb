class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.references :produto, index: true
      t.references :mesa, index: true
      t.text :observacao

      t.timestamps
    end
  end
end
