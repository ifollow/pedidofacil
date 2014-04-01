class CreateCaixadia < ActiveRecord::Migration
  def change
    create_table :caixadia do |t|
      t.date :datcai
      t.decimal :dinheiro
      t.decimal :cheque
      t.decimal :cartao
      t.decimal :prazo
      t.decimal :pagtodiv
      t.decimal :receb
      t.decimal :salant
      t.decimal :salprox
      t.decimal :salcaixa
      t.references :estabelecimento, index: true
      t.string :obscai
      t.time :hormov

      t.timestamps
    end
  end
end
