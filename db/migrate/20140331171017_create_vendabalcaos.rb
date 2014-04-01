class CreateVendabalcaos < ActiveRecord::Migration
  def change
    create_table :vendabalcaos do |t|
      t.decimal :total
      t.decimal :dinheiro
      t.decimal :cartao
      t.decimal :cheque
      t.decimal :nota
      t.references :estabelecimento, index: true
      t.references :funcionario, index: true

      t.timestamps
    end
  end
end
