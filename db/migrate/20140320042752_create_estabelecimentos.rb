class CreateEstabelecimentos < ActiveRecord::Migration
  def change
    create_table :estabelecimentos do |t|
      t.string :nome
      t.string :endereco
      t.string :telefone
      t.string :razao_social
      t.string :responsavel
      t.string :tel_responsavel
      t.string :image_restaurante

      t.timestamps
    end
  end
end
