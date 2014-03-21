class CreateFuncionarios < ActiveRecord::Migration
  def change
    create_table :funcionarios do |t|
      t.references :estabelecimento, index: true
      t.string :nome
      t.string :endereco
      t.string :cidade
      t.string :telefone
      t.string :celular
      t.string :cpf
      t.string :rg
      t.decimal :salario
      t.decimal :percentual

      t.timestamps
    end
  end
end
