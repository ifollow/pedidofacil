class AddCodigoToFuncionario < ActiveRecord::Migration
  def change
    add_column :funcionarios, :codigo, :string
  end
end
