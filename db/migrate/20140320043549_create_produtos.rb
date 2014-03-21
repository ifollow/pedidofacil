class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :nome
      t.decimal :preco
      t.references :cardapio, index: true
      t.references :estabelecimento, index: true

      t.timestamps
    end
  end
end
