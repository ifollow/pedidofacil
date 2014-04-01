class CreateVendamesas < ActiveRecord::Migration
  def change
    create_table :vendamesas do |t|
      t.decimal :total
      t.decimal :dinheiro
      t.decimal :cartao
      t.decimal :cheque
      t.decimal :nota
      t.references :mesa, index: true
      t.references :estabelecimento, index: true
      t.references :funcionario, index: true

      t.timestamps
    end
  end
end
