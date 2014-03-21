class Pedido < ActiveRecord::Base
  belongs_to :produto
  belongs_to :mesa
  belongs_to :estabelecimento
end
