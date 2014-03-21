class AddInscricaoestadualToEstabelecimentos < ActiveRecord::Migration
  def change
    add_column :estabelecimentos, :inscricao_estadual, :string
  end
end
