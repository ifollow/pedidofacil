class AddEstabelecimentoToEstoque < ActiveRecord::Migration
  def change
    add_reference :estoques, :estabelecimento, index: true
  end
end
