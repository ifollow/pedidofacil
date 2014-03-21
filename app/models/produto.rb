class Produto < ActiveRecord::Base
  belongs_to :cardapio
  belongs_to :estabelecimento
end
