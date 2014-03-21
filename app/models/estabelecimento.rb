class Estabelecimento < ActiveRecord::Base
	has_many :mesas
	has_many :cardapios
	has_many :pedidos
	has_many :produtos
end
