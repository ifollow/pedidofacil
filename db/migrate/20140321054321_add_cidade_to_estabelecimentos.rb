class AddCidadeToEstabelecimentos < ActiveRecord::Migration
  def change
    add_column :estabelecimentos, :cidade, :string
  end
end
