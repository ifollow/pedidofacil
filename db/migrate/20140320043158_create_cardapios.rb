class CreateCardapios < ActiveRecord::Migration
  def change
    create_table :cardapios do |t|
      t.string :name
      t.references :estabelecimento, index: true
      t.text :descricao
      t.boolean :status

      t.timestamps
    end
  end
end
