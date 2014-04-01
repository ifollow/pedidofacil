class Vendabalcao < ActiveRecord::Base
  belongs_to :estabelecimento
  belongs_to :funcionario
end
