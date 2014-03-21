class AddCodigoToEstabelecimento < ActiveRecord::Migration
  def change
    add_column :estabelecimentos, :codigo, :string
  end
end
